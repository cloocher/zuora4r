require 'xsd/qname'

module ZUORA

  class ZObject
    attr_accessor :id
    attr_accessor :fieldsToNull
  end

  class Account < ZObject
  end

  class Adjustment < ZObject
  end

  class Amendment < ZObject
  end

  class AmendOptions
  end

  class CallOptions < ZObject
  end

  class Contact < ZObject
  end

  class CreditBalanceAdjustment < ZObject
  end

  class Export < ZObject
  end

  class Invoice < ZObject
  end

  class InvoiceAdjustment < ZObject
  end

  class InvoiceItem < ZObject
  end

  class InvoiceItemAdjustment < ZObject
  end

  class InvoicePayment < ZObject
  end

  class InvoiceProcessingOptions
  end

  class LoginResult
  end

  class Payment < ZObject
  end

  class PaymentMethod < ZObject
  end

  class PreviewOptions
  end

  class Product < ZObject
  end

  class ProductRatePlan < ZObject
  end

  class ProductRatePlanCharge < ZObject
  end

  class ProductRatePlanChargeTier < ZObject
  end

  class ProductRatePlanChargeTierData < ZObject
  end

  class RatePlan < ZObject
  end

  class RatePlanCharge < ZObject
  end

  class RatePlanChargeTier < ZObject
  end

  class RatePlanData
  end

  class RatePlanChargeData
  end

  class Refund < ZObject
  end

  class RefundInvoicePayment < ZObject
  end

  class SubscribeOptions
  end

  class SubscribeRequest
  end

  class SubscribeResult
  end

  class SubscribeWithExistingAccountRequest
  end

  class Subscription < ZObject
  end

  class SubscriptionData
  end

  class TaxationItem < ZObject
  end

  class Usage < ZObject
  end

  class BillRun < ZObject
    attr_accessor :fieldsToNull
    attr_accessor :id
    attr_accessor :accountId
    attr_accessor :includesOneTime
    attr_accessor :includesRecurring
    attr_accessor :includesUsage
    attr_accessor :invoiceDate
    attr_accessor :targetDate
  end

  class SubscribeResult
    attr_accessor :accountId
    attr_accessor :accountNumber
    attr_accessor :errors
    attr_accessor :invoiceId
    attr_accessor :invoiceNumber
    attr_accessor :paymentTransactionNumber
    attr_accessor :subscriptionId
    attr_accessor :subscriptionNumber
    attr_accessor :success
  end

  class SaveResult
    attr_accessor :errors
    attr_accessor :id
    attr_accessor :success
  end

  class DeleteResult
    attr_accessor :errors
    attr_accessor :id
    attr_accessor :success
  end

  class QueryResult
    attr_accessor :done
    attr_accessor :queryLocator
    attr_accessor :records
    attr_accessor :size
  end

  class Error
    attr_accessor :code
    attr_accessor :message
    attr_accessor :field
  end

  class ApiFault
    attr_accessor :faultCode
    attr_accessor :faultMessage
  end

  class LoginFault < ::StandardError
    attr_accessor :faultCode
    attr_accessor :faultMessage
  end

  class InvalidTypeFault < ::StandardError
    attr_accessor :faultCode
    attr_accessor :faultMessage
  end

  class InvalidValueFault < ::StandardError
    attr_accessor :faultCode
    attr_accessor :faultMessage
  end

  class MalformedQueryFault < ::StandardError
    attr_accessor :faultCode
    attr_accessor :faultMessage
  end

  class InvalidQueryLocatorFault < ::StandardError
    attr_accessor :faultCode
    attr_accessor :faultMessage
  end

  class UnexpectedErrorFault < ::StandardError
    attr_accessor :faultCode
    attr_accessor :faultMessage
  end

  class ErrorCode < ::String
    API_DISABLED = ErrorCode.new('API_DISABLED')
    CANNOT_DELETE = ErrorCode.new('CANNOT_DELETE')
    CREDIT_CARD_PROCESSING_FAILURE = ErrorCode.new('CREDIT_CARD_PROCESSING_FAILURE')
    DUPLICATE_VALUE = ErrorCode.new('DUPLICATE_VALUE')
    INVALID_FIELD = ErrorCode.new('INVALID_FIELD')
    INVALID_ID = ErrorCode.new('INVALID_ID')
    INVALID_LOGIN = ErrorCode.new('INVALID_LOGIN')
    INVALID_SESSION = ErrorCode.new('INVALID_SESSION')
    INVALID_TYPE = ErrorCode.new('INVALID_TYPE')
    INVALID_VALUE = ErrorCode.new('INVALID_VALUE')
    INVALID_VERSION = ErrorCode.new('INVALID_VERSION')
    MALFORMED_QUERY = ErrorCode.new('MALFORMED_QUERY')
    MAX_RECORDS_EXCEEDED = ErrorCode.new('MAX_RECORDS_EXCEEDED')
    MISSING_REQUIRED_VALUE = ErrorCode.new('MISSING_REQUIRED_VALUE')
    TRANSACTION_FAILED = ErrorCode.new('TRANSACTION_FAILED')
    UNKNOWN_ERROR = ErrorCode.new('UNKNOWN_ERROR')
  end

  class Login
    attr_accessor :username
    attr_accessor :password

    def initialize(username, password)
      @username = username
      @password = password
    end
  end

  class LoginResponse
    attr_accessor :result
  end

  class Subscribe < ::Array
  end

  class SubscribeWithExistingAccount < ::Array
  end

  class SubscribeResponse < ::Array
  end

  class Create < ::Array
  end

  class CreateResponse < ::Array
  end

  class Generate < ::Array
  end

  class GenerateResponse < ::Array
  end

  class Update < ::Array
  end

  class UpdateResponse < ::Array
  end

  class Delete
    attr_accessor :type
    attr_accessor :ids

    def initialize(type = nil, ids = [])
      @type = type
      @ids = ids
    end
  end

  class DeleteResponse < ::Array
  end

  class Query
    attr_accessor :queryString

    def initialize(query = nil)
      @queryString = query
    end
  end

  class QueryResponse
    attr_accessor :result
  end

  class SessionHeader
    attr_accessor :session

    def initialize(session = nil)
      @session = session
    end

    def on_outbound_headeritem(test)
      sobj = SOAP::SOAPElement.new(XSD::QName.new('ns1', 'SessionHeader'))
      sobj.add(SOAP::SOAPElement.new(XSD::QName.new('ns1', 'session'), @session))
      ::SOAP::SOAPHeaderItem.new(sobj, false)
    end
  end

  class DummyHeader
    attr_accessor :account
    attr_accessor :amendment
    attr_accessor :invoice
    attr_accessor :payment
    attr_accessor :invoicePayment
    attr_accessor :product
    attr_accessor :productRatePlan
    attr_accessor :productRatePlanCharge
    attr_accessor :productRatePlanChargeTier
    attr_accessor :ratePlan
    attr_accessor :ratePlanCharge
    attr_accessor :ratePlanChargeTier
    attr_accessor :usage
    attr_reader :xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end
  end
end