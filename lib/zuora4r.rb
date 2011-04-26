#!/usr/bin/env ruby
#
# Copyright 2010 Ning
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'yaml'
require 'driver'
require 'models'
require 'mapping'

class Zuora4r
  PROD_URL = 'https://www.zuora.com/apps/services/a/27.0'
  SANDBOX_URL = 'https://apisandbox.zuora.com/apps/services/a/27.0'

  def initialize(username, password, url=PROD_URL, verbose=false)
    @username = username
    @password = password
    @url = url
    @verbose = verbose

    @client = ZUORA::Soap.new(@url)

    config_path = File.dirname(__FILE__) + '/../config'
    Dir.new(config_path).entries.each do |file|
      if file =~ /\.yml$/
        fields = YAML.load_file("#{config_path}/#{file}")
        type = file[/^\w+/]
        public_fields = fields['public']
        private_fields = fields['private']

        type_class = Object.const_get('ZUORA').const_get(type)
        schema_elements = [['fieldsToNull', 'SOAP::SOAPString[]', [0, nil]],
                           ['id', [nil, XSD::QName.new(ZUORA::Mapping::NS_OBJECT_API_ZUORA_COM, 'Id')], [0, 1]]]

        public_fields.each do |field_name, field_type|
          public_field = field_name.gsub(/^\w/) { |i| i.downcase }
          unless field_type.nil?
            prefix = field_type[0] == field_type.capitalize[0] ? 'ZUORA::' : 'SOAP::SOAP'
            field_type = prefix + field_type.gsub(/^\w/) { |i| i.upcase }
          end

          type_class.send :attr_accessor, public_field
          schema_elements << [public_field, [field_type, XSD::QName.new(ZUORA::Mapping::NS_OBJECT_API_ZUORA_COM, field_name)], [0, 1]]

          ZUORA::Mapping::ENCODED_REGISTRY.register(
              :class => type_class,
              :schema_type => XSD::QName.new(ZUORA::Mapping::NS_OBJECT_API_ZUORA_COM, type_class),
              :schema_basetype => XSD::QName.new(ZUORA::Mapping::NS_OBJECT_API_ZUORA_COM, 'zObject'),
              :schema_element => schema_elements
          )

          ZUORA::Mapping::LITERAL_REGISTRY.register(
              :class => type_class,
              :schema_type => XSD::QName.new(ZUORA::Mapping::NS_OBJECT_API_ZUORA_COM, type_class),
              :schema_basetype => XSD::QName.new(ZUORA::Mapping::NS_OBJECT_API_ZUORA_COM, 'zObject'),
              :schema_element => schema_elements
          )

        end

        unless private_fields.nil?
          private_fields.each_key do |field_name|
            field_name = "#{field_name}__c".gsub(/^\w/) { |i| i.downcase }
            type_class.send :attr_accessor, field_name
          end
        end
      end
    end
    session_start
  end

  def query(query_string)
    query_string =~ /select\s+(.+)\s+from/i
    fields = ($1.split /,\s+/).map do |f|
      f.gsub!(/\b\w/) { $&.downcase }
    end

    begin
      response = @client.query(ZUORA::Query.new(query_string))
    rescue Exception => e
      puts e.message
    end

    result = []
    if response && response.result && response.result.records && response.result.records.size > 0
      response.result.records.each do |record|
        row = {}
        fields.each do |f|
          row[f] = record.send(f)
        end
        result << row
      end
    end
    result
  end

  def subscribe(obj)
    begin
      return @client.subscribe(obj)
    rescue Exception => e
      puts e.message
    end
  end

  def create(obj)
    begin
      puts ">>>>>>>> CREATE START"
      response = @client.create(obj)
      puts ">>>>>>>> CREATE FINISH: #{response}"
#      return save_results_to_hash(@client.create(obj))
      return save_results_to_hash(response)
    rescue Exception => e
      puts e.message
    end
    []
  end

  def generate(obj)
    begin
      return save_results_to_hash(@client.generate(obj))
    rescue Exception => e
      puts e.message
    end
    []
  end

  def update(obj)
    begin
      puts ">>>>>>>> UPDATE START"
      response = @client.update(obj)
      puts ">>>>>>>> UPDATE FINISH: #{response}"
#      return save_results_to_hash(@client.update(obj))
      return save_results_to_hash(response)
    rescue Exception => e
      puts e.message
    end
    []
  end

  def delete(type, ids)
    begin
      return save_results_to_hash(@client.delete(ZUORA::Delete.new(type, ids)))
    rescue Exception => e
      puts e.message
    end
    []
  end

  protected

  def login
    @session = ZUORA::SessionHeader.new
    @session.session = @client.login(ZUORA::Login.new(@username, @password)).result.session
  end

  def session_start
    session_end
    login
    @client.headerhandler.set @session
    @client.wiredump_dev = STDOUT if @verbose
  end

  def session_end
    @client.headerhandler.delete(@session) if @session
  end

  private

  def save_results_to_hash(save_results)
    result = []
    save_results.each do |record|
      row = {:success => record.success}
      if record.success
        row[:id] = record.id
      else
        row[:errors] = []
        record.errors.each do |error|
          row[:errors] << {:message => error.message, :code => error.code}
        end
      end
      result << row
    end
    result
  end


end
