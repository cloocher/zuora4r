require 'xsd/qname'

module ZUORA


# {http://object.api.zuora.com/}zObject
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
class ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id

  def initialize(fieldsToNull = [], id = nil)
    @fieldsToNull = fieldsToNull
    @id = id
  end
end

# {http://object.api.zuora.com/}Account
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountNumber - SOAP::SOAPString
#   allowInvoiceEdit - SOAP::SOAPBoolean
#   autoPay - SOAP::SOAPBoolean
#   batch - SOAP::SOAPString
#   billCycleDay - SOAP::SOAPInt
#   billToId - (any)
#   createdDate - SOAP::SOAPDateTime
#   crmId - SOAP::SOAPString
#   currency - SOAP::SOAPString
#   customerServiceRepName - SOAP::SOAPString
#   defaultPaymentMethodId - (any)
#   name - SOAP::SOAPString
#   notes - SOAP::SOAPString
#   paymentTerm - SOAP::SOAPString
#   purchaseOrderNumber - SOAP::SOAPString
#   salesRepName - SOAP::SOAPString
#   soldToId - (any)
#   status - SOAP::SOAPString
#   updatedDate - SOAP::SOAPDateTime
class Account < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountNumber
  attr_accessor :allowInvoiceEdit
  attr_accessor :autoPay
  attr_accessor :batch
  attr_accessor :billCycleDay
  attr_accessor :billToId
  attr_accessor :createdDate
  attr_accessor :crmId
  attr_accessor :currency
  attr_accessor :customerServiceRepName
  attr_accessor :defaultPaymentMethodId
  attr_accessor :paymentGateway
  attr_accessor :name
  attr_accessor :notes
  attr_accessor :paymentTerm
  attr_accessor :purchaseOrderNumber
  attr_accessor :salesRepName
  attr_accessor :soldToId
  attr_accessor :status
  attr_accessor :updatedDate

  def initialize(fieldsToNull = [], id = nil, accountNumber = nil, allowInvoiceEdit = nil, autoPay = nil, batch = nil, billCycleDay = nil, billToId = nil, createdDate = nil, crmId = nil, currency = nil, customerServiceRepName = nil, defaultPaymentMethodId = nil, paymentGateway = nil, name = nil, notes = nil, paymentTerm = nil, purchaseOrderNumber = nil, salesRepName = nil, soldToId = nil, status = nil, updatedDate = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountNumber = accountNumber
    @allowInvoiceEdit = allowInvoiceEdit
    @autoPay = autoPay
    @batch = batch
    @billCycleDay = billCycleDay
    @billToId = billToId
    @createdDate = createdDate
    @crmId = crmId
    @currency = currency
    @customerServiceRepName = customerServiceRepName
    @defaultPaymentMethodId = defaultPaymentMethodId
    @paymentGateway = paymentGateway
    @name = name
    @notes = notes
    @paymentTerm = paymentTerm
    @purchaseOrderNumber = purchaseOrderNumber
    @salesRepName = salesRepName
    @soldToId = soldToId
    @status = status
    @updatedDate = updatedDate
  end
end

class Refund < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountId
  attr_accessor :accountingCode
  attr_accessor :amount
  attr_accessor :comment
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :gateway
  attr_accessor :gatewayResponse
  attr_accessor :gatewayResponseCode
  attr_accessor :methodType
  attr_accessor :paymentId
  attr_accessor :referenceID
  attr_accessor :refundDate
  attr_accessor :refundNumber
  attr_accessor :refundTransactionTime
  attr_accessor :status
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, accountId = nil, accountingCode = nil, amount = nil, comment = nil, createdById = nil, createdDate = nil, gateway = nil, gatewayResponse = nil, gatewayResponseCode = nil, methodType = nil, paymentId = nil, referenceID = nil, refundDate = nil, refundNumber = nil, refundTransactionTime = nil, status = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountId = accountId
    @accountingCode = accountingCode
    @amount = amount
    @comment = comment
    @createdById = createdById
    @createdDate = createdDate
    @gateway = gateway
    @gatewayResponse = gatewayResponse
    @gatewayResponseCode = gatewayResponseCode
    @methodType = methodType
    @paymentId = paymentId
    @referenceID = referenceID
    @refundDate = refundDate
    @refundNumber = refundNumber
    @refundTransactionTime = refundTransactionTime
    @status = status
    @type = type
  end
end
# {http://object.api.zuora.com/}Amendment
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   contractEffectiveDate - SOAP::SOAPDateTime
#   customerAcceptanceDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   effectiveDate - SOAP::SOAPDateTime
#   initialTerm - SOAP::SOAPLong
#   name - SOAP::SOAPString
#   renewalTerm - SOAP::SOAPLong
#   serviceActivationDate - SOAP::SOAPDateTime
#   status - SOAP::SOAPString
#   subscriptionId - (any)
#   termCommitment - SOAP::SOAPString
#   termStartDate - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class Amendment < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :contractEffectiveDate
  attr_accessor :customerAcceptanceDate
  attr_accessor :description
  attr_accessor :effectiveDate
  attr_accessor :initialTerm
  attr_accessor :name
  attr_accessor :renewalTerm
  attr_accessor :serviceActivationDate
  attr_accessor :status
  attr_accessor :subscriptionId
  attr_accessor :termCommitment
  attr_accessor :termStartDate
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, contractEffectiveDate = nil, customerAcceptanceDate = nil, description = nil, effectiveDate = nil, initialTerm = nil, name = nil, renewalTerm = nil, serviceActivationDate = nil, status = nil, subscriptionId = nil, termCommitment = nil, termStartDate = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @contractEffectiveDate = contractEffectiveDate
    @customerAcceptanceDate = customerAcceptanceDate
    @description = description
    @effectiveDate = effectiveDate
    @initialTerm = initialTerm
    @name = name
    @renewalTerm = renewalTerm
    @serviceActivationDate = serviceActivationDate
    @status = status
    @subscriptionId = subscriptionId
    @termCommitment = termCommitment
    @termStartDate = termStartDate
    @type = type
  end
end

# {http://object.api.zuora.com/}Contact
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountId - (any)
#   address1 - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   country - SOAP::SOAPString
#   createdDate - SOAP::SOAPDateTime
#   fax - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   homePhone - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   mobilePhone - SOAP::SOAPString
#   nickName - SOAP::SOAPString
#   otherPhone - SOAP::SOAPString
#   otherPhoneType - SOAP::SOAPString
#   personalEmail - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   state - SOAP::SOAPString
#   updatedDate - SOAP::SOAPDateTime
#   workEmail - SOAP::SOAPString
#   workPhone - SOAP::SOAPString
class Contact < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountId
  attr_accessor :address1
  attr_accessor :address2
  attr_accessor :city
  attr_accessor :country
  attr_accessor :createdDate
  attr_accessor :fax
  attr_accessor :firstName
  attr_accessor :homePhone
  attr_accessor :lastName
  attr_accessor :mobilePhone
  attr_accessor :nickName
  attr_accessor :otherPhone
  attr_accessor :otherPhoneType
  attr_accessor :personalEmail
  attr_accessor :postalCode
  attr_accessor :state
  attr_accessor :updatedDate
  attr_accessor :workEmail
  attr_accessor :workPhone

  def initialize(fieldsToNull = [], id = nil, accountId = nil, address1 = nil, address2 = nil, city = nil, country = nil, createdDate = nil, fax = nil, firstName = nil, homePhone = nil, lastName = nil, mobilePhone = nil, nickName = nil, otherPhone = nil, otherPhoneType = nil, personalEmail = nil, postalCode = nil, state = nil, updatedDate = nil, workEmail = nil, workPhone = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountId = accountId
    @address1 = address1
    @address2 = address2
    @city = city
    @country = country
    @createdDate = createdDate
    @fax = fax
    @firstName = firstName
    @homePhone = homePhone
    @lastName = lastName
    @mobilePhone = mobilePhone
    @nickName = nickName
    @otherPhone = otherPhone
    @otherPhoneType = otherPhoneType
    @personalEmail = personalEmail
    @postalCode = postalCode
    @state = state
    @updatedDate = updatedDate
    @workEmail = workEmail
    @workPhone = workPhone
  end
end

# {http://object.api.zuora.com/}Invoice
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountId - (any)
#   amount - SOAP::SOAPDouble
#   balance - SOAP::SOAPDouble
#   body - SOAP::SOAPString
#   dueDate - SOAP::SOAPDateTime
#   invoiceDate - SOAP::SOAPDateTime
#   invoiceNumber - SOAP::SOAPString
#   status - SOAP::SOAPString
#   targetDate - SOAP::SOAPDateTime
class Invoice < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountId
  attr_accessor :amount
  attr_accessor :balance
  attr_accessor :body
  attr_accessor :dueDate
  attr_accessor :invoiceDate
  attr_accessor :invoiceNumber
  attr_accessor :status
  attr_accessor :targetDate

  def initialize(fieldsToNull = [], id = nil, accountId = nil, amount = nil, balance = nil, body = nil, dueDate = nil, invoiceDate = nil, invoiceNumber = nil, status = nil, targetDate = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountId = accountId
    @amount = amount
    @balance = balance
    @body = body
    @dueDate = dueDate
    @invoiceDate = invoiceDate
    @invoiceNumber = invoiceNumber
    @status = status
    @targetDate = targetDate
  end
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

    def initialize(fieldsToNull = [], id = nil, accountId = nil, includesOneTime = nil, includesRecurring = nil, includesUsage = nil, invoiceDate = nil, status = nil, targetDate = nil)
      @fieldsToNull = fieldsToNull
      @id = id
      @accountId = accountId
      @includesOneTime = includesOneTime
      @includesRecurring = includesRecurring
      @includesUsage = includesUsage
      @invoiceDate = invoiceDate
      @targetDate = targetDate
    end
  end


# {http://object.api.zuora.com/}Payment
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountId - (any)
#   amount - SOAP::SOAPDouble
#   comment - SOAP::SOAPString
#   effectiveDate - SOAP::SOAPDateTime
#   paymentMethodId - (any)
#   referenceId - SOAP::SOAPString
#   status - SOAP::SOAPString
#   type - SOAP::SOAPString
class Payment < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountId
  attr_accessor :amount
  attr_accessor :comment
  attr_accessor :effectiveDate
  attr_accessor :paymentMethodId
  attr_accessor :referenceId
  attr_accessor :status
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, accountId = nil, amount = nil, comment = nil, effectiveDate = nil, paymentMethodId = nil, referenceId = nil, status = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountId = accountId
    @amount = amount
    @comment = comment
    @effectiveDate = effectiveDate
    @paymentMethodId = paymentMethodId
    @referenceId = referenceId
    @status = status
    @type = type
  end
end

# {http://object.api.zuora.com/}InvoicePayment
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   amount - SOAP::SOAPDouble
#   invoiceId - (any)
#   paymentId - (any)
class InvoicePayment < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :amount
  attr_accessor :invoiceId
  attr_accessor :paymentId

  def initialize(fieldsToNull = [], id = nil, amount = nil, invoiceId = nil, paymentId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @amount = amount
    @invoiceId = invoiceId
    @paymentId = paymentId
  end
end

# {http://object.api.zuora.com/}PaymentMethod
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountId - (any)
#   achAbaCode - SOAP::SOAPString
#   achAccountName - SOAP::SOAPString
#   achAccountNumber - SOAP::SOAPString
#   achAccountNumberMask - SOAP::SOAPString
#   achAccountType - SOAP::SOAPString
#   achBankName - SOAP::SOAPString
#   active - SOAP::SOAPBoolean
#   createdDate - SOAP::SOAPDateTime
#   creditCardAddress1 - SOAP::SOAPString
#   creditCardAddress2 - SOAP::SOAPString
#   creditCardCity - SOAP::SOAPString
#   creditCardCountry - SOAP::SOAPString
#   creditCardExpirationMonth - SOAP::SOAPInt
#   creditCardExpirationYear - SOAP::SOAPInt
#   creditCardHolderName - SOAP::SOAPString
#   creditCardMaskNumber - SOAP::SOAPString
#   creditCardNumber - SOAP::SOAPString
#   creditCardPostalCode - SOAP::SOAPString
#   creditCardState - SOAP::SOAPString
#   creditCardType - SOAP::SOAPString
#   lastTransactionDateTime - SOAP::SOAPDateTime
#   lastTransactionStatus - SOAP::SOAPString
#   name - SOAP::SOAPString
#   paypalBaid - SOAP::SOAPString
#   paypalEmail - SOAP::SOAPString
#   type - SOAP::SOAPString
#   updatedDate - SOAP::SOAPDateTime
class PaymentMethod < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountId
  attr_accessor :achAbaCode
  attr_accessor :achAccountName
  attr_accessor :achAccountNumber
  attr_accessor :achAccountNumberMask
  attr_accessor :achAccountType
  attr_accessor :achBankName
  attr_accessor :active
  attr_accessor :createdDate
  attr_accessor :creditCardAddress1
  attr_accessor :creditCardAddress2
  attr_accessor :creditCardCity
  attr_accessor :creditCardCountry
  attr_accessor :creditCardExpirationMonth
  attr_accessor :creditCardExpirationYear
  attr_accessor :creditCardHolderName
  attr_accessor :creditCardMaskNumber
  attr_accessor :creditCardNumber
  attr_accessor :creditCardPostalCode
  attr_accessor :creditCardState
  attr_accessor :creditCardType
  attr_accessor :lastTransactionDateTime
  attr_accessor :lastTransactionStatus
  attr_accessor :name
  attr_accessor :paypalBaid
  attr_accessor :paypalEmail
  attr_accessor :type
  attr_accessor :updatedDate

  def initialize(fieldsToNull = [], id = nil, accountId = nil, achAbaCode = nil, achAccountName = nil, achAccountNumber = nil, achAccountNumberMask = nil, achAccountType = nil, achBankName = nil, active = nil, createdDate = nil, creditCardAddress1 = nil, creditCardAddress2 = nil, creditCardCity = nil, creditCardCountry = nil, creditCardExpirationMonth = nil, creditCardExpirationYear = nil, creditCardHolderName = nil, creditCardMaskNumber = nil, creditCardNumber = nil, creditCardPostalCode = nil, creditCardState = nil, creditCardType = nil, lastTransactionDateTime = nil, lastTransactionStatus = nil, name = nil, paypalBaid = nil, paypalEmail = nil, type = nil, updatedDate = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountId = accountId
    @achAbaCode = achAbaCode
    @achAccountName = achAccountName
    @achAccountNumber = achAccountNumber
    @achAccountNumberMask = achAccountNumberMask
    @achAccountType = achAccountType
    @achBankName = achBankName
    @active = active
    @createdDate = createdDate
    @creditCardAddress1 = creditCardAddress1
    @creditCardAddress2 = creditCardAddress2
    @creditCardCity = creditCardCity
    @creditCardCountry = creditCardCountry
    @creditCardExpirationMonth = creditCardExpirationMonth
    @creditCardExpirationYear = creditCardExpirationYear
    @creditCardHolderName = creditCardHolderName
    @creditCardMaskNumber = creditCardMaskNumber
    @creditCardNumber = creditCardNumber
    @creditCardPostalCode = creditCardPostalCode
    @creditCardState = creditCardState
    @creditCardType = creditCardType
    @lastTransactionDateTime = lastTransactionDateTime
    @lastTransactionStatus = lastTransactionStatus
    @name = name
    @paypalBaid = paypalBaid
    @paypalEmail = paypalEmail
    @type = type
    @updatedDate = updatedDate
  end
end

# {http://object.api.zuora.com/}Product
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   description - SOAP::SOAPString
#   effectiveEndDate - SOAP::SOAPDateTime
#   effectiveStartDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   sKU - SOAP::SOAPString
class Product < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :description
  attr_accessor :effectiveEndDate
  attr_accessor :effectiveStartDate
  attr_accessor :name
  attr_accessor :sKU

  def initialize(fieldsToNull = [], id = nil, description = nil, effectiveEndDate = nil, effectiveStartDate = nil, name = nil, sKU = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @description = description
    @effectiveEndDate = effectiveEndDate
    @effectiveStartDate = effectiveStartDate
    @name = name
    @sKU = sKU
  end
end

# {http://object.api.zuora.com/}ProductRatePlan
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   description - SOAP::SOAPString
#   effectiveEndDate - SOAP::SOAPDateTime
#   effectiveStartDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   productId - (any)
class ProductRatePlan < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :description
  attr_accessor :effectiveEndDate
  attr_accessor :effectiveStartDate
  attr_accessor :name
  attr_accessor :productId

  def initialize(fieldsToNull = [], id = nil, description = nil, effectiveEndDate = nil, effectiveStartDate = nil, name = nil, productId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @description = description
    @effectiveEndDate = effectiveEndDate
    @effectiveStartDate = effectiveStartDate
    @name = name
    @productId = productId
  end
end

# {http://object.api.zuora.com/}ProductRatePlanCharge
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountingCode - SOAP::SOAPString
#   defaultQuantity - SOAP::SOAPDouble
#   description - SOAP::SOAPString
#   maxQuantity - SOAP::SOAPDouble
#   minQuantity - SOAP::SOAPDouble
#   model - SOAP::SOAPString
#   productRatePlanId - (any)
#   type - SOAP::SOAPString
#   uOM - SOAP::SOAPString
class ProductRatePlanCharge < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountingCode
  attr_accessor :defaultQuantity
  attr_accessor :description
  attr_accessor :maxQuantity
  attr_accessor :minQuantity
  attr_accessor :model
  attr_accessor :name
  attr_accessor :productRatePlanId
  attr_accessor :type
  attr_accessor :uOM

  def initialize(fieldsToNull = [], id = nil, accountingCode = nil, defaultQuantity = nil, description = nil, maxQuantity = nil, minQuantity = nil, model = nil, name = nil, productRatePlanId = nil, type = nil, uOM = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountingCode = accountingCode
    @defaultQuantity = defaultQuantity
    @description = description
    @maxQuantity = maxQuantity
    @minQuantity = minQuantity
    @model = model
    @name = name
    @productRatePlanId = productRatePlanId
    @type = type
    @uOM = uOM
  end
end

# {http://object.api.zuora.com/}ProductRatePlanChargeTier
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   endingUnit - SOAP::SOAPDouble
#   price - SOAP::SOAPDouble
#   productRatePlanChargeId - (any)
#   startingUnit - SOAP::SOAPDouble
#   tier - SOAP::SOAPInt
class ProductRatePlanChargeTier < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :endingUnit
  attr_accessor :price
  attr_accessor :productRatePlanChargeId
  attr_accessor :startingUnit
  attr_accessor :tier

  def initialize(fieldsToNull = [], id = nil, endingUnit = nil, price = nil, productRatePlanChargeId = nil, startingUnit = nil, tier = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @endingUnit = endingUnit
    @price = price
    @productRatePlanChargeId = productRatePlanChargeId
    @startingUnit = startingUnit
    @tier = tier
  end
end

# {http://object.api.zuora.com/}RatePlan
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   amendmentId - (any)
#   amendmentSubscriptionRatePlanId - (any)
#   amendmentType - SOAP::SOAPString
#   name - SOAP::SOAPString
#   productRatePlanId - (any)
#   subscriptionId - (any)
class RatePlan < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :amendmentId
  attr_accessor :amendmentSubscriptionRatePlanId
  attr_accessor :amendmentType
  attr_accessor :name
  attr_accessor :productRatePlanId
  attr_accessor :subscriptionId

  def initialize(fieldsToNull = [], id = nil, amendmentId = nil, amendmentSubscriptionRatePlanId = nil, amendmentType = nil, name = nil, productRatePlanId = nil, subscriptionId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @amendmentId = amendmentId
    @amendmentSubscriptionRatePlanId = amendmentSubscriptionRatePlanId
    @amendmentType = amendmentType
    @name = name
    @productRatePlanId = productRatePlanId
    @subscriptionId = subscriptionId
  end
end

# {http://object.api.zuora.com/}RatePlanCharge
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountingCode - SOAP::SOAPString
#   chargeModel - SOAP::SOAPString
#   chargeNumber - SOAP::SOAPString
#   chargeType - SOAP::SOAPString
#   description - SOAP::SOAPString
#   dMRC - SOAP::SOAPDouble
#   dTCV - SOAP::SOAPDouble
#   includedUnits - SOAP::SOAPDouble
#   mRR - SOAP::SOAPDouble
#   name - SOAP::SOAPString
#   numberOfPeriods - SOAP::SOAPLong
#   overagePrice - SOAP::SOAPDouble
#   price - SOAP::SOAPDouble
#   productRatePlanChargeId - (any)
#   quantity - SOAP::SOAPDouble
#   ratePlanId - (any)
#   tCV - SOAP::SOAPDouble
#   triggerEvent - SOAP::SOAPString
#   uOM - SOAP::SOAPString
class RatePlanCharge < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountingCode
  attr_accessor :chargeModel
  attr_accessor :chargeNumber
  attr_accessor :chargeType
  attr_accessor :description
  attr_accessor :dMRC
  attr_accessor :dTCV
  attr_accessor :includedUnits
  attr_accessor :mRR
  attr_accessor :name
  attr_accessor :numberOfPeriods
  attr_accessor :overagePrice
  attr_accessor :price
  attr_accessor :productRatePlanChargeId
  attr_accessor :quantity
  attr_accessor :ratePlanId
  attr_accessor :tCV
  attr_accessor :triggerEvent
  attr_accessor :uOM

  def initialize(fieldsToNull = [], id = nil, accountingCode = nil, chargeModel = nil, chargeNumber = nil, chargeType = nil, description = nil, dMRC = nil, dTCV = nil, includedUnits = nil, mRR = nil, name = nil, numberOfPeriods = nil, overagePrice = nil, price = nil, productRatePlanChargeId = nil, quantity = nil, ratePlanId = nil, tCV = nil, triggerEvent = nil, uOM = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountingCode = accountingCode
    @chargeModel = chargeModel
    @chargeNumber = chargeNumber
    @chargeType = chargeType
    @description = description
    @dMRC = dMRC
    @dTCV = dTCV
    @includedUnits = includedUnits
    @mRR = mRR
    @name = name
    @numberOfPeriods = numberOfPeriods
    @overagePrice = overagePrice
    @price = price
    @productRatePlanChargeId = productRatePlanChargeId
    @quantity = quantity
    @ratePlanId = ratePlanId
    @tCV = tCV
    @triggerEvent = triggerEvent
    @uOM = uOM
  end
end

# {http://object.api.zuora.com/}RatePlanChargeTier
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   endingUnit - SOAP::SOAPDouble
#   price - SOAP::SOAPDouble
#   priceFormat - SOAP::SOAPString
#   ratePlanChargeId - (any)
#   startingUnit - SOAP::SOAPDouble
#   tier - SOAP::SOAPInt
class RatePlanChargeTier < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :endingUnit
  attr_accessor :price
  attr_accessor :priceFormat
  attr_accessor :ratePlanChargeId
  attr_accessor :startingUnit
  attr_accessor :tier

  def initialize(fieldsToNull = [], id = nil, endingUnit = nil, price = nil, priceFormat = nil, ratePlanChargeId = nil, startingUnit = nil, tier = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @endingUnit = endingUnit
    @price = price
    @priceFormat = priceFormat
    @ratePlanChargeId = ratePlanChargeId
    @startingUnit = startingUnit
    @tier = tier
  end
end

# {http://object.api.zuora.com/}Subscription
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountId - (any)
#   autoRenew - SOAP::SOAPBoolean
#   cancelledDate - SOAP::SOAPDateTime
#   contractAcceptanceDate - SOAP::SOAPDateTime
#   contractEffectiveDate - SOAP::SOAPDateTime
#   currency - SOAP::SOAPString
#   initialTerm - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   notes - SOAP::SOAPString
#   originalSubscriptionId - SOAP::SOAPString
#   previousSubscriptionId - SOAP::SOAPString
#   renewalTerm - SOAP::SOAPInt
#   serviceActivationDate - SOAP::SOAPDateTime
#   status - SOAP::SOAPString
#   termStartDate - SOAP::SOAPDateTime
#   version - SOAP::SOAPInt
class Subscription < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountId
  attr_accessor :autoRenew
  attr_accessor :cancelledDate
  attr_accessor :contractAcceptanceDate
  attr_accessor :contractEffectiveDate
  attr_accessor :currency
  attr_accessor :initialTerm
  attr_accessor :name
  attr_accessor :notes
  attr_accessor :originalSubscriptionId
  attr_accessor :previousSubscriptionId
  attr_accessor :renewalTerm
  attr_accessor :serviceActivationDate
  attr_accessor :status
  attr_accessor :termStartDate
  attr_accessor :version

  def initialize(fieldsToNull = [], id = nil, accountId = nil, autoRenew = nil, cancelledDate = nil, contractAcceptanceDate = nil, contractEffectiveDate = nil, currency = nil, initialTerm = nil, name = nil, notes = nil, originalSubscriptionId = nil, previousSubscriptionId = nil, renewalTerm = nil, serviceActivationDate = nil, status = nil, termStartDate = nil, version = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountId = accountId
    @autoRenew = autoRenew
    @cancelledDate = cancelledDate
    @contractAcceptanceDate = contractAcceptanceDate
    @contractEffectiveDate = contractEffectiveDate
    @currency = currency
    @initialTerm = initialTerm
    @name = name
    @notes = notes
    @originalSubscriptionId = originalSubscriptionId
    @previousSubscriptionId = previousSubscriptionId
    @renewalTerm = renewalTerm
    @serviceActivationDate = serviceActivationDate
    @status = status
    @termStartDate = termStartDate
    @version = version
  end
end

# {http://object.api.zuora.com/}Usage
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountId - (any)
#   chargeNumber - SOAP::SOAPString
#   endDateTime - SOAP::SOAPDateTime
#   quantity - SOAP::SOAPDouble
#   rbeStatus - SOAP::SOAPString
#   sourceName - SOAP::SOAPString
#   sourceType - SOAP::SOAPString
#   startDateTime - SOAP::SOAPDateTime
#   submissionDateTime - SOAP::SOAPDateTime
#   subscriptionNumber - SOAP::SOAPString
#   uOM - SOAP::SOAPString
class Usage < ZObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountId
  attr_accessor :chargeNumber
  attr_accessor :endDateTime
  attr_accessor :quantity
  attr_accessor :rbeStatus
  attr_accessor :sourceName
  attr_accessor :sourceType
  attr_accessor :startDateTime
  attr_accessor :submissionDateTime
  attr_accessor :subscriptionNumber
  attr_accessor :uOM

  def initialize(fieldsToNull = [], id = nil, accountId = nil, chargeNumber = nil, endDateTime = nil, quantity = nil, rbeStatus = nil, sourceName = nil, sourceType = nil, startDateTime = nil, submissionDateTime = nil, subscriptionNumber = nil, uOM = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountId = accountId
    @chargeNumber = chargeNumber
    @endDateTime = endDateTime
    @quantity = quantity
    @rbeStatus = rbeStatus
    @sourceName = sourceName
    @sourceType = sourceType
    @startDateTime = startDateTime
    @submissionDateTime = submissionDateTime
    @subscriptionNumber = subscriptionNumber
    @uOM = uOM
  end
end

# {http://api.zuora.com/}LoginResult
#   session - SOAP::SOAPString
#   serverUrl - SOAP::SOAPString
class LoginResult
  attr_accessor :session
  attr_accessor :serverUrl

  def initialize(session = nil, serverUrl = nil)
    @session = session
    @serverUrl = serverUrl
  end
end

# {http://api.zuora.com/}SubscribeRequest
#   account - ZUORA::Account
#   paymentMethod - ZUORA::PaymentMethod
#   billToContact - ZUORA::Contact
#   soldToContact - ZUORA::Contact
#   subscribeOptions - ZUORA::SubscribeOptions
#   subscriptionData - ZUORA::SubscriptionData
class SubscribeRequest
  attr_accessor :account
  attr_accessor :paymentMethod
  attr_accessor :billToContact
  attr_accessor :soldToContact
  attr_accessor :subscribeOptions
  attr_accessor :subscriptionData

  def initialize(account = nil, paymentMethod = nil, billToContact = nil, soldToContact = nil, subscribeOptions = nil, subscriptionData = nil)
    @account = account
    @paymentMethod = paymentMethod
    @billToContact = billToContact
    @soldToContact = soldToContact
    @subscribeOptions = subscribeOptions
    @subscriptionData = subscriptionData
  end
end

# {http://api.zuora.com/}SubscribeWithExistingAccountRequest
#   accountId - (any)
#   subscribeOptions - ZUORA::SubscribeOptions
#   subscriptionData - ZUORA::SubscriptionData
class SubscribeWithExistingAccountRequest
  attr_accessor :accountId
  attr_accessor :subscribeOptions
  attr_accessor :subscriptionData

  def initialize(accountId = nil, subscribeOptions = nil, subscriptionData = nil)
    @accountId = accountId
    @subscribeOptions = subscribeOptions
    @subscriptionData = subscriptionData
  end
end

# {http://api.zuora.com/}SubscribeOptions
#   generateInvoice - SOAP::SOAPBoolean
#   processPayments - SOAP::SOAPBoolean
class SubscribeOptions
  attr_accessor :generateInvoice
  attr_accessor :processPayments

  def initialize(generateInvoice = nil, processPayments = nil)
    @generateInvoice = generateInvoice
    @processPayments = processPayments
  end
end

# {http://api.zuora.com/}SubscriptionData
#   subscription - ZUORA::Subscription
#   ratePlanData - ZUORA::RatePlanData
class SubscriptionData
  attr_accessor :subscription
  attr_accessor :ratePlanData

  def initialize(subscription = nil, ratePlanData = [])
    @subscription = subscription
    @ratePlanData = ratePlanData
  end
end

# {http://api.zuora.com/}RatePlanData
#   ratePlan - ZUORA::RatePlan
#   ratePlanCharge - ZUORA::RatePlanCharge
class RatePlanData
  attr_accessor :ratePlan
  attr_accessor :ratePlanCharge

  def initialize(ratePlan = nil, ratePlanCharge = [])
    @ratePlan = ratePlan
    @ratePlanCharge = ratePlanCharge
  end
end

# {http://api.zuora.com/}SubscribeResult
#   accountId - (any)
#   accountNumber - SOAP::SOAPString
#   errors - ZUORA::Error
#   invoiceId - (any)
#   invoiceNumber - SOAP::SOAPString
#   paymentTransactionNumber - SOAP::SOAPString
#   subscriptionId - (any)
#   subscriptionNumber - SOAP::SOAPString
#   success - SOAP::SOAPBoolean
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

  def initialize(accountId = nil, accountNumber = nil, errors = [], invoiceId = nil, invoiceNumber = nil, paymentTransactionNumber = nil, subscriptionId = nil, subscriptionNumber = nil, success = nil)
    @accountId = accountId
    @accountNumber = accountNumber
    @errors = errors
    @invoiceId = invoiceId
    @invoiceNumber = invoiceNumber
    @paymentTransactionNumber = paymentTransactionNumber
    @subscriptionId = subscriptionId
    @subscriptionNumber = subscriptionNumber
    @success = success
  end
end

# {http://api.zuora.com/}SaveResult
#   errors - ZUORA::Error
#   id - (any)
#   success - SOAP::SOAPBoolean
class SaveResult
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {http://api.zuora.com/}DeleteResult
#   errors - ZUORA::Error
#   id - (any)
#   success - SOAP::SOAPBoolean
class DeleteResult
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {http://api.zuora.com/}QueryResult
#   done - SOAP::SOAPBoolean
#   queryLocator - (any)
#   records - ZUORA::ZObject
#   size - SOAP::SOAPInt
class QueryResult
  attr_accessor :done
  attr_accessor :queryLocator
  attr_accessor :records
  attr_accessor :size

  def initialize(done = nil, queryLocator = nil, records = [], size = nil)
    @done = done
    @queryLocator = queryLocator
    @records = records
    @size = size
  end
end

# {http://api.zuora.com/}Error
#   code - ZUORA::ErrorCode
#   message - SOAP::SOAPString
#   field - SOAP::SOAPString
class Error
  attr_accessor :code
  attr_accessor :message
  attr_accessor :field

  def initialize(code = nil, message = nil, field = nil)
    @code = code
    @message = message
    @field = field
  end
end

# {http://fault.api.zuora.com/}ApiFault
#   faultCode - ZUORA::ErrorCode
#   faultMessage - SOAP::SOAPString
class ApiFault
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://fault.api.zuora.com/}LoginFault
#   faultCode - ZUORA::ErrorCode
#   faultMessage - SOAP::SOAPString
class LoginFault < ::StandardError
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://fault.api.zuora.com/}InvalidTypeFault
#   faultCode - ZUORA::ErrorCode
#   faultMessage - SOAP::SOAPString
class InvalidTypeFault < ::StandardError
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://fault.api.zuora.com/}InvalidValueFault
#   faultCode - ZUORA::ErrorCode
#   faultMessage - SOAP::SOAPString
class InvalidValueFault < ::StandardError
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://fault.api.zuora.com/}MalformedQueryFault
#   faultCode - ZUORA::ErrorCode
#   faultMessage - SOAP::SOAPString
class MalformedQueryFault < ::StandardError
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://fault.api.zuora.com/}InvalidQueryLocatorFault
#   faultCode - ZUORA::ErrorCode
#   faultMessage - SOAP::SOAPString
class InvalidQueryLocatorFault < ::StandardError
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://fault.api.zuora.com/}UnexpectedErrorFault
#   faultCode - ZUORA::ErrorCode
#   faultMessage - SOAP::SOAPString
class UnexpectedErrorFault < ::StandardError
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://api.zuora.com/}ErrorCode
class ErrorCode < ::String
  API_DISABLED = ErrorCode.new("API_DISABLED")
  CANNOT_DELETE = ErrorCode.new("CANNOT_DELETE")
  CREDIT_CARD_PROCESSING_FAILURE = ErrorCode.new("CREDIT_CARD_PROCESSING_FAILURE")
  DUPLICATE_VALUE = ErrorCode.new("DUPLICATE_VALUE")
  INVALID_FIELD = ErrorCode.new("INVALID_FIELD")
  INVALID_ID = ErrorCode.new("INVALID_ID")
  INVALID_LOGIN = ErrorCode.new("INVALID_LOGIN")
  INVALID_SESSION = ErrorCode.new("INVALID_SESSION")
  INVALID_TYPE = ErrorCode.new("INVALID_TYPE")
  INVALID_VALUE = ErrorCode.new("INVALID_VALUE")
  INVALID_VERSION = ErrorCode.new("INVALID_VERSION")
  MALFORMED_QUERY = ErrorCode.new("MALFORMED_QUERY")
  MAX_RECORDS_EXCEEDED = ErrorCode.new("MAX_RECORDS_EXCEEDED")
  MISSING_REQUIRED_VALUE = ErrorCode.new("MISSING_REQUIRED_VALUE")
  TRANSACTION_FAILED = ErrorCode.new("TRANSACTION_FAILED")
  UNKNOWN_ERROR = ErrorCode.new("UNKNOWN_ERROR")
end

# {http://api.zuora.com/}login
#   username - SOAP::SOAPString
#   password - SOAP::SOAPString
class Login
  attr_accessor :username
  attr_accessor :password

  def initialize(username = nil, password = nil)
    @username = username
    @password = password
  end
end

# {http://api.zuora.com/}loginResponse
#   result - ZUORA::LoginResult
class LoginResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://api.zuora.com/}subscribe
class Subscribe < ::Array
end

# {http://api.zuora.com/}subscribeWithExistingAccount
class SubscribeWithExistingAccount < ::Array
end

# {http://api.zuora.com/}subscribeResponse
class SubscribeResponse < ::Array
end

# {http://api.zuora.com/}create
class Create < ::Array
end

# {http://api.zuora.com/}createResponse
class CreateResponse < ::Array
end

# {http://api.zuora.com/}create
class Generate < ::Array
end

# {http://api.zuora.com/}createResponse
class GenerateResponse < ::Array
end

# {http://api.zuora.com/}update
class Update < ::Array
end

# {http://api.zuora.com/}updateResponse
class UpdateResponse < ::Array
end

# {http://api.zuora.com/}delete
#   type - SOAP::SOAPString
#   ids - (any)
class Delete
  attr_accessor :type
  attr_accessor :ids

  def initialize(type = nil, ids = [])
    @type = type
    @ids = ids
  end
end

# {http://api.zuora.com/}deleteResponse
class DeleteResponse < ::Array
end

# {http://api.zuora.com/}query
#   queryString - SOAP::SOAPString
class Query
  attr_accessor :queryString

  def initialize(queryString = nil)
    @queryString = queryString
  end
end

# {http://api.zuora.com/}queryResponse
#   result - ZUORA::QueryResult
class QueryResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://api.zuora.com/}SessionHeader
#   session - SOAP::SOAPString
class SessionHeader
  attr_accessor :session

  def initialize(session = nil)
    @session = session
  end

  def on_outbound_headeritem(test)
    sobj = SOAP::SOAPElement.new(XSD::QName.new("ns1", 'SessionHeader'))
    sobj.add(SOAP::SOAPElement.new(XSD::QName.new("ns1", "session"), @session))
    ::SOAP::SOAPHeaderItem.new(sobj, false)
  end
end

# {http://api.zuora.com/}DummyHeader
#   account - ZUORA::Account
#   amendment - ZUORA::Amendment
#   invoice - ZUORA::Invoice
#   payment - ZUORA::Payment
#   invoicePayment - ZUORA::InvoicePayment
#   product - ZUORA::Product
#   productRatePlan - ZUORA::ProductRatePlan
#   productRatePlanCharge - ZUORA::ProductRatePlanCharge
#   productRatePlanChargeTier - ZUORA::ProductRatePlanChargeTier
#   ratePlan - ZUORA::RatePlan
#   ratePlanCharge - ZUORA::RatePlanCharge
#   ratePlanChargeTier - ZUORA::RatePlanChargeTier
#   usage - ZUORA::Usage
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
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(account = nil, amendment = nil, invoice = nil, payment = nil, invoicePayment = nil, product = nil, productRatePlan = nil, productRatePlanCharge = nil, productRatePlanChargeTier = nil, ratePlan = nil, ratePlanCharge = nil, ratePlanChargeTier = nil, usage = nil)
    @account = account
    @amendment = amendment
    @invoice = invoice
    @payment = payment
    @invoicePayment = invoicePayment
    @product = product
    @productRatePlan = productRatePlan
    @productRatePlanCharge = productRatePlanCharge
    @productRatePlanChargeTier = productRatePlanChargeTier
    @ratePlan = ratePlan
    @ratePlanCharge = ratePlanCharge
    @ratePlanChargeTier = ratePlanChargeTier
    @usage = usage
    @__xmlele_any = nil
  end
end


end
