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


# if you get this error:
#
# 'uninitialized constant SOAP::Mapping::EncodedRegistry (NameError)'
#
# you need to follow the bellow steps to work around it
#
# gem uninstall soap4r
# curl -O http://dev.ctor.org/download/soap4r-1.5.8.tar.gz
# tar zxvf soap4r-1.5.8.tar.gz
# cd soap4r-1.5.8
# sudo ruby install.rb

require 'zuora_interface'
require 'zuora/api'

class SOAP::Header::HandlerSet
  def reset
    @store = XSD::NamedElements.new
  end

  def set(header)
    reset
    add header
  end
end


class ZuoraClient
  PROD_URL = 'https://www.zuora.com/apps/services/a/28.0'
  SANDBOX_URL = 'https://apisandbox.zuora.com/apps/services/a/28.0'

  def initialize(username, password, url=PROD_URL)
    $ZUORA_USER = username
    $ZUORA_PASSWORD = password
    $ZUORA_ENDPOINT = url

    @client = ZuoraInterface.new
    @client.session_start
  end

  def query(query_string)

    query_string =~ /select\s+(.+)\s+from/i
    fields = ($1.split /,\s+/).map do |f|
      f.gsub!(/\b\w/) { $&.downcase }
    end

    begin
      response = @client.query(query_string)
    rescue Exception => e
      puts e.message
    end

    result = []
    if response && response.result && response.result.size > 0
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
      response = @client.subscribe(obj)
      return response
    rescue Exception => e
      puts e.message
    end
  end

  def create(obj)
    begin
      response = @client.create(obj)
      result = save_results_to_hash(response)
    rescue Exception => e
      puts e.message
    end
    result || []
  end

  def generate(obj)
    begin
      response = @client.generate(obj)
      result = save_results_to_hash(response)
    rescue Exception => e
      puts e.message
    end
    result || []
  end

  def update(obj)
    begin
      response = @client.update(obj)
      result = save_results_to_hash(response)
    rescue Exception => e
      puts e.message
    end
    result || []
  end

  def delete(type, ids)
    begin
      response = @client.delete(type, ids)
      result = save_results_to_hash(response)
    rescue Exception => e
      puts e.message
    end
    result || []
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
