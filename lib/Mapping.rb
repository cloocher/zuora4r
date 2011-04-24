require 'soap/mapping'

module ZUORA
  module Mapping
    ENCODED_REGISTRY = ::SOAP::Mapping::EncodedRegistry.new
    LITERAL_REGISTRY = ::SOAP::Mapping::LiteralRegistry.new
    NS_API_ZUORA_COM = 'http://api.zuora.com/'
    NS_FAULT_API_ZUORA_COM = 'http://fault.api.zuora.com/'
    NS_OBJECT_API_ZUORA_COM = 'http://object.api.zuora.com/'
    NS_XML_SCHEMA = 'http://www.w3.org/2001/XMLSchema'

    ENCODED_REGISTRY.register(
        :class => ZUORA::ZObject,
        :schema_type => XSD::QName.new(NS_OBJECT_API_ZUORA_COM, 'zObject'),
        :schema_element => [
            ['fieldsToNull', 'SOAP::SOAPString[]', [0, nil]],
            ['id', [nil, XSD::QName.new(NS_OBJECT_API_ZUORA_COM, 'Id')], [0, 1]]
        ]
    )

    ENCODED_REGISTRY.register(
        :class => ZUORA::SaveResult,
        :schema_type => XSD::QName.new(NS_API_ZUORA_COM, 'SaveResult'),
        :schema_element => [
            ['errors', ['ZUORA::Error[]', XSD::QName.new(NS_API_ZUORA_COM, 'Errors')], [0, nil]],
            ['id', [nil, XSD::QName.new(NS_API_ZUORA_COM, 'Id')], [0, 1]],
            ['success', ['SOAP::SOAPBoolean', XSD::QName.new(NS_API_ZUORA_COM, 'Success')], [0, 1]]
        ]
    )

    ENCODED_REGISTRY.register(
        :class => ZUORA::DeleteResult,
        :schema_type => XSD::QName.new(NS_API_ZUORA_COM, 'DeleteResult'),
        :schema_element => [
            ['errors', 'ZUORA::Error[]', [0, nil]],
            ['id', nil, [0, 1]],
            ['success', 'SOAP::SOAPBoolean', [0, 1]]
        ]
    )

    ENCODED_REGISTRY.register(
        :class => ZUORA::QueryResult,
        :schema_type => XSD::QName.new(NS_API_ZUORA_COM, 'QueryResult'),
        :schema_element => [
            ['done', 'SOAP::SOAPBoolean'],
            ['queryLocator', nil],
            ['records', 'ZUORA::ZObject[]', [0, nil]],
            ['size', 'SOAP::SOAPInt']
        ]
    )

    ENCODED_REGISTRY.register(
        :class => ZUORA::Error,
        :schema_type => XSD::QName.new(NS_API_ZUORA_COM, 'Error'),
        :schema_element => [
            ['code', ['ZUORA::ErrorCode', XSD::QName.new(NS_API_ZUORA_COM, 'Code')], [0, 1]],
            ['message', ['SOAP::SOAPString', XSD::QName.new(NS_API_ZUORA_COM, 'Message')], [0, 1]],
            ['field', ['SOAP::SOAPString', XSD::QName.new(NS_API_ZUORA_COM, 'Field')], [0, 1]]
        ]
    )

    ENCODED_REGISTRY.register(
        :class => ZUORA::ApiFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    ENCODED_REGISTRY.register(
        :class => ZUORA::LoginFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'LoginFault'),
        :schema_basetype => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    ENCODED_REGISTRY.register(
        :class => ZUORA::InvalidTypeFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'InvalidTypeFault'),
        :schema_basetype => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    ENCODED_REGISTRY.register(
        :class => ZUORA::InvalidValueFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'InvalidValueFault'),
        :schema_basetype => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    ENCODED_REGISTRY.register(
        :class => ZUORA::MalformedQueryFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'MalformedQueryFault'),
        :schema_basetype => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    ENCODED_REGISTRY.register(
        :class => ZUORA::InvalidQueryLocatorFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'InvalidQueryLocatorFault'),
        :schema_basetype => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    ENCODED_REGISTRY.register(
        :class => ZUORA::UnexpectedErrorFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'UnexpectedErrorFault'),
        :schema_basetype => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    ENCODED_REGISTRY.register(
        :class => ZUORA::ErrorCode,
        :schema_type => XSD::QName.new(NS_API_ZUORA_COM, 'ErrorCode')
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::ZObject,
        :schema_type => XSD::QName.new(NS_OBJECT_API_ZUORA_COM, 'zObject'),
        :schema_element => [
            ['fieldsToNull', 'SOAP::SOAPString[]', [0, nil]],
            ['id', [nil, XSD::QName.new(NS_OBJECT_API_ZUORA_COM, 'Id')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::SaveResult,
        :schema_type => XSD::QName.new(NS_API_ZUORA_COM, 'SaveResult'),
        :schema_element => [
            ['errors', ['ZUORA::Error[]', XSD::QName.new(NS_API_ZUORA_COM, 'Errors')], [0, nil]],
            ['id', [nil, XSD::QName.new(NS_API_ZUORA_COM, 'Id')], [0, 1]],
            ['success', ['SOAP::SOAPBoolean', XSD::QName.new(NS_API_ZUORA_COM, 'Success')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::DeleteResult,
        :schema_type => XSD::QName.new(NS_API_ZUORA_COM, 'DeleteResult'),
        :schema_element => [
            ['errors', 'ZUORA::Error[]', [0, nil]],
            ['id', nil, [0, 1]],
            ['success', 'SOAP::SOAPBoolean', [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::QueryResult,
        :schema_type => XSD::QName.new(NS_API_ZUORA_COM, 'QueryResult'),
        :schema_element => [
            ['done', 'SOAP::SOAPBoolean'],
            ['queryLocator', nil],
            ['records', 'ZUORA::ZObject[]', [0, nil]],
            ['size', 'SOAP::SOAPInt']
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::Error,
        :schema_type => XSD::QName.new(NS_API_ZUORA_COM, 'Error'),
        :schema_element => [
            ['code', ['ZUORA::ErrorCode', XSD::QName.new(NS_API_ZUORA_COM, 'Code')], [0, 1]],
            ['message', ['SOAP::SOAPString', XSD::QName.new(NS_API_ZUORA_COM, 'Message')], [0, 1]],
            ['field', ['SOAP::SOAPString', XSD::QName.new(NS_API_ZUORA_COM, 'Field')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::ApiFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::LoginFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'LoginFault'),
        :schema_basetype => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::InvalidTypeFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'InvalidTypeFault'),
        :schema_basetype => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::InvalidValueFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'InvalidValueFault'),
        :schema_basetype => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::MalformedQueryFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'MalformedQueryFault'),
        :schema_basetype => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::InvalidQueryLocatorFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'InvalidQueryLocatorFault'),
        :schema_basetype => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::UnexpectedErrorFault,
        :schema_type => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'UnexpectedErrorFault'),
        :schema_basetype => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'ApiFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::ErrorCode,
        :schema_type => XSD::QName.new(NS_API_ZUORA_COM, 'ErrorCode')
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::Login,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'login'),
        :schema_element => [
            ['username', 'SOAP::SOAPString', [0, 1]],
            ['password', 'SOAP::SOAPString', [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::LoginResponse,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'loginResponse'),
        :schema_element => [
            ['result', 'ZUORA::LoginResult', [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::Subscribe,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'subscribe'),
        :schema_element => [
            ['subscribes', 'ZUORA::SubscribeRequest[]', [0, nil]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::SubscribeWithExistingAccount,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'subscribeWithExistingAccount'),
        :schema_element => [
            ['subscribeWithExistingAccounts', 'ZUORA::SubscribeWithExistingAccountRequest[]', [0, nil]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::SubscribeResponse,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'subscribeResponse'),
        :schema_element => [
            ['result', 'ZUORA::SubscribeResult[]', [0, nil]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::Create,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'create'),
        :schema_element => [
            ['zObjects', 'ZUORA::ZObject[]', [0, nil]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::CreateResponse,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'createResponse'),
        :schema_element => [
            ['result', 'ZUORA::SaveResult[]', [0, nil]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::Generate,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'generate'),
        :schema_element => [
            ['zObjects', 'ZUORA::ZObject[]', [0, nil]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::GenerateResponse,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'generateResponse'),
        :schema_element => [
            ['result', 'ZUORA::SaveResult[]', [0, nil]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::Update,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'update'),
        :schema_element => [
            ['zObjects', 'ZUORA::ZObject[]', [0, nil]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::UpdateResponse,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'updateResponse'),
        :schema_element => [
            ['result', 'ZUORA::SaveResult[]', [0, nil]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::Delete,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'delete'),
        :schema_element => [
            ['type', 'SOAP::SOAPString'],
            ['ids', '[]', [0, nil]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::DeleteResponse,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'deleteResponse'),
        :schema_element => [
            ['result', 'ZUORA::DeleteResult[]', [0, nil]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::Query,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'query'),
        :schema_element => [
            ['queryString', 'SOAP::SOAPString']
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::QueryResponse,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'queryResponse'),
        :schema_element => [
            ['result', 'ZUORA::QueryResult']
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::SessionHeader,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'SessionHeader'),
        :schema_element => [
            ['session', 'SOAP::SOAPString']
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::DummyHeader,
        :schema_name => XSD::QName.new(NS_API_ZUORA_COM, 'DummyHeader'),
        :schema_element => [
            ['account', ['ZUORA::Account', XSD::QName.new(NS_API_ZUORA_COM, 'Account')], [0, 1]],
            ['amendment', ['ZUORA::Amendment', XSD::QName.new(NS_API_ZUORA_COM, 'Amendment')], [0, 1]],
            ['invoice', ['ZUORA::Invoice', XSD::QName.new(NS_API_ZUORA_COM, 'Invoice')], [0, 1]],
            ['payment', ['ZUORA::Payment', XSD::QName.new(NS_API_ZUORA_COM, 'Payment')], [0, 1]],
            ['invoicePayment', ['ZUORA::InvoicePayment', XSD::QName.new(NS_API_ZUORA_COM, 'InvoicePayment')], [0, 1]],
            ['product', ['ZUORA::Product', XSD::QName.new(NS_API_ZUORA_COM, 'Product')], [0, 1]],
            ['productRatePlan', ['ZUORA::ProductRatePlan', XSD::QName.new(NS_API_ZUORA_COM, 'ProductRatePlan')], [0, 1]],
            ['productRatePlanCharge', ['ZUORA::ProductRatePlanCharge', XSD::QName.new(NS_API_ZUORA_COM, 'ProductRatePlanCharge')], [0, 1]],
            ['productRatePlanChargeTier', ['ZUORA::ProductRatePlanChargeTier', XSD::QName.new(NS_API_ZUORA_COM, 'ProductRatePlanChargeTier')], [0, 1]],
            ['ratePlan', ['ZUORA::RatePlan', XSD::QName.new(NS_API_ZUORA_COM, 'RatePlan')], [0, 1]],
            ['ratePlanCharge', ['ZUORA::RatePlanCharge', XSD::QName.new(NS_API_ZUORA_COM, 'RatePlanCharge')], [0, 1]],
            ['ratePlanChargeTier', ['ZUORA::RatePlanChargeTier', XSD::QName.new(NS_API_ZUORA_COM, 'RatePlanChargeTier')], [0, 1]],
            ['usage', ['ZUORA::Usage', XSD::QName.new(NS_API_ZUORA_COM, 'Usage')], [0, 1]],
            ['any', [nil, XSD::QName.new(NS_XML_SCHEMA, 'anyType')]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::ApiFault,
        :schema_name => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'fault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::LoginFault,
        :schema_name => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'LoginFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::InvalidTypeFault,
        :schema_name => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'InvalidTypeFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::InvalidValueFault,
        :schema_name => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'InvalidValueFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::MalformedQueryFault,
        :schema_name => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'MalformedQueryFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::InvalidQueryLocatorFault,
        :schema_name => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'InvalidQueryLocatorFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )

    LITERAL_REGISTRY.register(
        :class => ZUORA::UnexpectedErrorFault,
        :schema_name => XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'UnexpectedErrorFault'),
        :schema_element => [
            ['faultCode', ['ZUORA::ErrorCode', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultCode')], [0, 1]],
            ['faultMessage', ['SOAP::SOAPString', XSD::QName.new(NS_FAULT_API_ZUORA_COM, 'FaultMessage')], [0, 1]]
        ]
    )
  end
end
