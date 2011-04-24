require 'soap/rpc/driver'

module ZUORA

  class Soap < ::SOAP::RPC::Driver

    METHODS = [
        ['',
         'login',
         [['in', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'login']],
          ['out', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'loginResponse']]],
         {:request_style => :document, :request_use => :literal,
          :response_style => :document, :response_use => :literal,
          :faults => {'ZUORA::UnexpectedErrorFault_'=>{:name=>'UnexpectedErrorFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}, 'ZUORA::LoginFault_'=>{:name=>'LoginFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}}}
        ],
        ['',
         'subscribe',
         [['in', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'subscribe']],
          ['out', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'subscribeResponse']]],
         {:request_style => :document, :request_use => :literal,
          :response_style => :document, :response_use => :literal,
          :faults => {'ZUORA::UnexpectedErrorFault_'=>{:name=>'UnexpectedErrorFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}}}
        ],
        ['',
         'subscribeWithExistingAccount',
         [['in', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'subscribeWithExistingAccount']],
          ['out', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'subscribeResponse']]],
         {:request_style => :document, :request_use => :literal,
          :response_style => :document, :response_use => :literal,
          :faults => {'ZUORA::UnexpectedErrorFault_'=>{:name=>'UnexpectedErrorFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}}}
        ],
        ['',
         'create',
         [['in', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'create']],
          ['out', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'createResponse']]],
         {:request_style => :document, :request_use => :literal,
          :response_style => :document, :response_use => :literal,
          :faults => {'ZUORA::InvalidTypeFault_'=>{:name=>'InvalidTypeFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}, 'ZUORA::UnexpectedErrorFault_'=>{:name=>'UnexpectedErrorFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}}}
        ],
        ['',
         'generate',
         [['in', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'generate']],
          ['out', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'generateResponse']]],
         {:request_style => :document, :request_use => :literal,
          :response_style => :document, :response_use => :literal,
          :faults => {'ZUORA::InvalidTypeFault_'=>{:name=>'InvalidTypeFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}, 'ZUORA::UnexpectedErrorFault_'=>{:name=>'UnexpectedErrorFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}}}
        ],
        ['',
         'update',
         [['in', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'update']],
          ['out', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'updateResponse']]],
         {:request_style => :document, :request_use => :literal,
          :response_style => :document, :response_use => :literal,
          :faults => {'ZUORA::InvalidTypeFault_'=>{:name=>'InvalidTypeFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}, 'ZUORA::UnexpectedErrorFault_'=>{:name=>'UnexpectedErrorFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}}}
        ],
        ['',
         'query',
         [['in', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'query']],
          ['out', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'queryResponse']]],
         {:request_style => :document, :request_use => :literal,
          :response_style => :document, :response_use => :literal,
          :faults => {'ZUORA::InvalidQueryLocatorFault_'=>{:name=>'InvalidQueryLocatorFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}, 'ZUORA::MalformedQueryFault_'=>{:name=>'MalformedQueryFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}, 'ZUORA::UnexpectedErrorFault_'=>{:name=>'UnexpectedErrorFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}}}
        ],
        ['',
         'delete',
         [['in', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'delete']],
          ['out', 'parameters', ['::SOAP::SOAPElement', 'http://api.zuora.com/', 'deleteResponse']]],
         {:request_style => :document, :request_use => :literal,
          :response_style => :document, :response_use => :literal,
          :faults => {'ZUORA::InvalidValueFault_'=>{:name=>'InvalidValueFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}, 'ZUORA::InvalidTypeFault_'=>{:name=>'InvalidTypeFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}, 'ZUORA::UnexpectedErrorFault_'=>{:name=>'UnexpectedErrorFault', :encodingstyle=>'document', :ns=>'http://api.zuora.com/', :use=>'literal', :namespace=>nil}}}
        ]
    ]

    def initialize(endpoint_url)
      super(endpoint_url, nil)
      self.mapping_registry = Mapping::ENCODED_REGISTRY
      self.literal_mapping_registry = Mapping::LITERAL_REGISTRY
      init_methods
    end

    private

    def init_methods
      METHODS.each do |definitions|
        opt = definitions.last
        if opt[:request_style] == :document
          add_document_operation(*definitions)
        else
          add_rpc_operation(*definitions)
          qname = definitions[0]
          name = definitions[2]
          if qname.name != name and qname.name.capitalize == name.capitalize
            ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
              __send__(name, *arg)
            end
          end
        end
      end
    end
  end
end

class SOAP::Header::HandlerSet
  def reset
    @store = XSD::NamedElements.new
  end

  def set(header)
    reset
    add header
  end
end
