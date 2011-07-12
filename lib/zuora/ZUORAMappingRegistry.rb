require 'soap/mapping'
#require 'soap/mapping/encodedregistry'
#require 'soap/mapping/literalregistry'

module ZUORA

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsApiZuoraCom = "http://api.zuora.com/"
  NsFaultApiZuoraCom = "http://fault.api.zuora.com/"
  NsObjectApiZuoraCom = "http://object.api.zuora.com/"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

  EncodedRegistry.register(
    :class => ZUORA::ZObject,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::Account,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Account"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AccountNumber")], [0, 1]],
      ["allowInvoiceEdit", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "AllowInvoiceEdit")], [0, 1]],
      ["autoPay", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "AutoPay")], [0, 1]],
      ["batch", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Batch")], [0, 1]],
      ["billCycleDay", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "BillCycleDay")], [0, 1]],
      ["billToId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "BillToId")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "CreatedDate")], [0, 1]],
      ["crmId", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CrmId")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Currency")], [0, 1]],
      ["customerServiceRepName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CustomerServiceRepName")], [0, 1]],
      ["defaultPaymentMethodId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "DefaultPaymentMethodId")], [0, 1]],
      ["paymentGateway", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PaymentGateway")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Notes")], [0, 1]],
      ["paymentTerm", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PaymentTerm")], [0, 1]],
      ["purchaseOrderNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PurchaseOrderNumber")], [0, 1]],
      ["salesRepName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "SalesRepName")], [0, 1]],
      ["soldToId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "SoldToId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Status")], [0, 1]],
      ["updatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "UpdatedDate")], [0, 1]],
      ["invoiceDeliveryPrefsEmail", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "InvoiceDeliveryPrefsEmail")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::Refund,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Refund"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["accountingCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AccountingCode")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Amount")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Comment")], [0, 1]],
      ["createdById", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "CreatedDate")], [0, 1]],
      ["gateway", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Gateway")], [0, 1]],
      ["gatewayResponse", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "GatewayResponse")], [0, 1]],
      ["gatewayResponseCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "GatewayResponseCode")], [0, 1]],
      ["methodType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "MethodType")], [0, 1]],
      ["paymentId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "PaymentId")], [0, 1]],
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ReferenceID")], [0, 1]],
      ["refundDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "RefundDate")], [0, 1]],
      ["refundNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "RefundNumber")], [0, 1]],
      ["refundTransactionTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "RefundTransactionTime")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Status")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::Amendment,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Amendment"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["contractEffectiveDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "ContractEffectiveDate")], [0, 1]],
      ["customerAcceptanceDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "CustomerAcceptanceDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Description")], [0, 1]],
      ["effectiveDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EffectiveDate")], [0, 1]],
      ["initialTerm", ["SOAP::SOAPLong", XSD::QName.new(NsObjectApiZuoraCom, "InitialTerm")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["renewalTerm", ["SOAP::SOAPLong", XSD::QName.new(NsObjectApiZuoraCom, "RenewalTerm")], [0, 1]],
      ["serviceActivationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "ServiceActivationDate")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Status")], [0, 1]],
      ["subscriptionId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "SubscriptionId")], [0, 1]],
      ["termCommitment", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "TermCommitment")], [0, 1]],
      ["termStartDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "TermStartDate")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Type")], [0, 1]],
      ["ratePlanData", ["ZUORA::RatePlanData", XSD::QName.new(NsObjectApiZuoraCom, "RatePlanData")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::Contact,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Contact"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["address1", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Address1")], [0, 1]],
      ["address2", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Address2")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "City")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Country")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "CreatedDate")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Fax")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "FirstName")], [0, 1]],
      ["homePhone", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "HomePhone")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "LastName")], [0, 1]],
      ["mobilePhone", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "MobilePhone")], [0, 1]],
      ["nickName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "NickName")], [0, 1]],
      ["otherPhone", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "OtherPhone")], [0, 1]],
      ["otherPhoneType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "OtherPhoneType")], [0, 1]],
      ["personalEmail", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PersonalEmail")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PostalCode")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "State")], [0, 1]],
      ["updatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "UpdatedDate")], [0, 1]],
      ["workEmail", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "WorkEmail")], [0, 1]],
      ["workPhone", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "WorkPhone")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::Invoice,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Invoice"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Amount")], [0, 1]],
      ["balance", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Balance")], [0, 1]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Body")], [0, 1]],
      ["dueDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "DueDate")], [0, 1]],
      ["invoiceDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "InvoiceDate")], [0, 1]],
      ["invoiceNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "InvoiceNumber")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Status")], [0, 1]],
      ["targetDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "TargetDate")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::InvoiceItemAdjustment,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "InvoiceItemAdjustment"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Amount")], [0, 1]],
      ["sourceId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "SourceId")], [0, 1]],
      ["invoiceId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "InvoiceId")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Type")], [0, 1]],    
      ["sourceType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "SourceType")], [0, 1]],
      ["adjustmentDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "AdjustmentDate")], [0, 1]]
    ]
  )
  
  EncodedRegistry.register(
    :class => ZUORA::Payment,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Payment"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Amount")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Comment")], [0, 1]],
      ["effectiveDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EffectiveDate")], [0, 1]],
      ["paymentMethodId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "PaymentMethodId")], [0, 1]],
      ["referenceId", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ReferenceId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Status")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::InvoicePayment,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "InvoicePayment"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Amount")], [0, 1]],
      ["invoiceId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "InvoiceId")], [0, 1]],
      ["paymentId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "PaymentId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::PaymentMethod,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "PaymentMethod"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["achAbaCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AchAbaCode")], [0, 1]],
      ["achAccountName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AchAccountName")], [0, 1]],
      ["achAccountNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AchAccountNumber")], [0, 1]],
      ["achAccountNumberMask", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AchAccountNumberMask")], [0, 1]],
      ["achAccountType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AchAccountType")], [0, 1]],
      ["achBankName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AchBankName")], [0, 1]],
      ["active", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "Active")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "CreatedDate")], [0, 1]],
      ["creditCardAddress1", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardAddress1")], [0, 1]],
      ["creditCardAddress2", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardAddress2")], [0, 1]],
      ["creditCardCity", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardCity")], [0, 1]],
      ["creditCardCountry", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardCountry")], [0, 1]],
      ["creditCardExpirationMonth", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardExpirationMonth")], [0, 1]],
      ["creditCardExpirationYear", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardExpirationYear")], [0, 1]],
      ["creditCardHolderName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardHolderName")], [0, 1]],
      ["creditCardMaskNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardMaskNumber")], [0, 1]],
      ["creditCardNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardNumber")], [0, 1]],
      ["creditCardPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardPostalCode")], [0, 1]],
      ["creditCardState", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardState")], [0, 1]],
      ["creditCardType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardType")], [0, 1]],
      ["lastTransactionDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "LastTransactionDateTime")], [0, 1]],
      ["lastTransactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "LastTransactionStatus")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["paypalBaid", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PaypalBaid")], [0, 1]],
      ["paypalEmail", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PaypalEmail")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Type")], [0, 1]],
      ["updatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "UpdatedDate")], [0, 1]],
      ["numConsecutiveFailures", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "NumConsecutiveFailures")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::Product,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Product"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Description")], [0, 1]],
      ["effectiveEndDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EffectiveEndDate")], [0, 1]],
      ["effectiveStartDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EffectiveStartDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["sKU", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "SKU")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::ProductRatePlan,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlan"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Description")], [0, 1]],
      ["effectiveEndDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EffectiveEndDate")], [0, 1]],
      ["effectiveStartDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EffectiveStartDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["productId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "ProductId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::ProductRatePlanCharge,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanCharge"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountingCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AccountingCode")], [0, 1]],
      ["defaultQuantity", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "DefaultQuantity")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Description")], [0, 1]],
      ["maxQuantity", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "MaxQuantity")], [0, 1]],
      ["minQuantity", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "MinQuantity")], [0, 1]],
      ["model", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Model")], [0, 1]],
      ["productRatePlanId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanId")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Type")], [0, 1]],
      ["uOM", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "UOM")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["chargeModel", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ChargeModel")], [0, 1]],
      ["revRecCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "RevRecCode")], [0, 1]],
      ["triggerEvent", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "TriggerEvent")], [0, 1]],
      ["chargeType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ChargeType")], [0, 1]],
      ["billingPeriod", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "BillingPeriod")], [0, 1]],
      ["billCycleType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "BillCycleType")], [0, 1]],
      ["billingPeriodAlignement", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "BillingPeriodAlignement")], [0, 1]],
      ["revRecTriggerCondition", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "RevRecTriggerCondition")], [0, 1]],
      ["productRatePlanChargeTierData", ["ZUORA::ProductRatePlanChargeTierData", XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanChargeTierData")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::ProductRatePlanChargeTierData,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "ProductRatePlanChargeTierData"),
    :schema_element => [
      ["productRatePlanChargeTier", ["ZUORA::ProductRatePlanChargeTier[]", XSD::QName.new(NsApiZuoraCom, "ProductRatePlanChargeTier")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::ProductRatePlanChargeTier,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanChargeTier"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["endingUnit", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "EndingUnit")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Price")], [0, 1]],
      ["productRatePlanChargeId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanChargeId")], [0, 1]],
      ["startingUnit", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "StartingUnit")], [0, 1]],
      ["tier", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "Tier")], [0, 1]],
      ["active", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "Active")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Currency")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::RatePlan,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "RatePlan"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["amendmentId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AmendmentId")], [0, 1]],
      ["amendmentSubscriptionRatePlanId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AmendmentSubscriptionRatePlanId")], [0, 1]],
      ["amendmentType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AmendmentType")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["productRatePlanId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanId")], [0, 1]],
      ["subscriptionId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "SubscriptionId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::RatePlanCharge,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "RatePlanCharge"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountingCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AccountingCode")], [0, 1]],
      ["chargeModel", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ChargeModel")], [0, 1]],
      ["chargeNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ChargeNumber")], [0, 1]],
      ["chargeType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ChargeType")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Description")], [0, 1]],
      ["dMRC", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "DMRC")], [0, 1]],
      ["dTCV", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "DTCV")], [0, 1]],
      ["includedUnits", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "IncludedUnits")], [0, 1]],
      ["mRR", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "MRR")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["numberOfPeriods", ["SOAP::SOAPLong", XSD::QName.new(NsObjectApiZuoraCom, "NumberOfPeriods")], [0, 1]],
      ["overagePrice", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "OveragePrice")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Price")], [0, 1]],
      ["productRatePlanChargeId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanChargeId")], [0, 1]],
      ["quantity", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Quantity")], [0, 1]],
      ["ratePlanId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "RatePlanId")], [0, 1]],
      ["tCV", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "TCV")], [0, 1]],
      ["triggerEvent", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "TriggerEvent")], [0, 1]],
      ["uOM", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "UOM")], [0, 1]],
      ["chargedThroughDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "ChargedThroughDate")], [0, 1]],
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::RatePlanChargeTier,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "RatePlanChargeTier"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["endingUnit", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "EndingUnit")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Price")], [0, 1]],
      ["priceFormat", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PriceFormat")], [0, 1]],
      ["ratePlanChargeId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "RatePlanChargeId")], [0, 1]],
      ["startingUnit", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "StartingUnit")], [0, 1]],
      ["tier", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "Tier")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::Subscription,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Subscription"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["autoRenew", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "AutoRenew")], [0, 1]],
      ["cancelledDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "CancelledDate")], [0, 1]],
      ["contractAcceptanceDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "ContractAcceptanceDate")], [0, 1]],
      ["contractEffectiveDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "ContractEffectiveDate")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Currency")], [0, 1]],
      ["initialTerm", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "InitialTerm")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Notes")], [0, 1]],
      ["originalSubscriptionId", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "OriginalSubscriptionId")], [0, 1]],
      ["previousSubscriptionId", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PreviousSubscriptionId")], [0, 1]],
      ["renewalTerm", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "RenewalTerm")], [0, 1]],
      ["serviceActivationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "ServiceActivationDate")], [0, 1]],
      ["subscriptionEndDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "SubscriptionEndDate")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Status")], [0, 1]],
      ["termStartDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "TermStartDate")], [0, 1]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "Version")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::Usage,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Usage"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["chargeNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ChargeNumber")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EndDateTime")], [0, 1]],
      ["quantity", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Quantity")], [0, 1]],
      ["rbeStatus", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "RbeStatus")], [0, 1]],
      ["sourceName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "SourceName")], [0, 1]],
      ["sourceType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "SourceType")], [0, 1]],
      ["startDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "StartDateTime")], [0, 1]],
      ["submissionDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "SubmissionDateTime")], [0, 1]],
      ["subscriptionNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "SubscriptionNumber")], [0, 1]],
      ["uOM", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "UOM")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::LoginResult,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "LoginResult"),
    :schema_element => [
      ["session", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "Session")]],
      ["serverUrl", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "ServerUrl")]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::SubscribeRequest,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "SubscribeRequest"),
    :schema_element => [
      ["account", ["ZUORA::Account", XSD::QName.new(NsApiZuoraCom, "Account")], [0, 1]],
      ["paymentMethod", ["ZUORA::PaymentMethod", XSD::QName.new(NsApiZuoraCom, "PaymentMethod")], [0, 1]],
      ["billToContact", ["ZUORA::Contact", XSD::QName.new(NsApiZuoraCom, "BillToContact")], [0, 1]],
      ["soldToContact", ["ZUORA::Contact", XSD::QName.new(NsApiZuoraCom, "SoldToContact")], [0, 1]],
      ["subscribeOptions", ["ZUORA::SubscribeOptions", XSD::QName.new(NsApiZuoraCom, "SubscribeOptions")], [0, 1]],
      ["subscriptionData", ["ZUORA::SubscriptionData", XSD::QName.new(NsApiZuoraCom, "SubscriptionData")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::SubscribeWithExistingAccountRequest,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "SubscribeWithExistingAccountRequest"),
    :schema_element => [
      ["accountId", [nil, XSD::QName.new(NsApiZuoraCom, "AccountId")], [0, 1]],
      ["subscribeOptions", ["ZUORA::SubscribeOptions", XSD::QName.new(NsApiZuoraCom, "SubscribeOptions")], [0, 1]],
      ["subscriptionData", ["ZUORA::SubscriptionData", XSD::QName.new(NsApiZuoraCom, "SubscriptionData")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::SubscribeOptions,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "SubscribeOptions"),
    :schema_element => [
      ["generateInvoice", ["SOAP::SOAPBoolean", XSD::QName.new(NsApiZuoraCom, "GenerateInvoice")], [0, 1]],
      ["processPayments", ["SOAP::SOAPBoolean", XSD::QName.new(NsApiZuoraCom, "ProcessPayments")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::SubscriptionData,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "SubscriptionData"),
    :schema_element => [
      ["subscription", ["ZUORA::Subscription", XSD::QName.new(NsApiZuoraCom, "Subscription")], [0, 1]],
      ["ratePlanData", ["ZUORA::RatePlanData[]", XSD::QName.new(NsApiZuoraCom, "RatePlanData")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::RatePlanData,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "RatePlanData"),
    :schema_element => [
      ["ratePlan", ["ZUORA::RatePlan", XSD::QName.new(NsApiZuoraCom, "RatePlan")], [0, 1]],
      ["ratePlanCharge", ["ZUORA::RatePlanCharge[]", XSD::QName.new(NsApiZuoraCom, "RatePlanCharge")], [0, nil]],
      ["ratePlanChargeData", ["ZUORA::RatePlanChargeData[]", XSD::QName.new(NsApiZuoraCom, "RatePlanChargeData")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::RatePlanChargeData,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "RatePlanChargeData"),
    :schema_element => [
      ["ratePlanCharge", ["ZUORA::RatePlanCharge", XSD::QName.new(NsApiZuoraCom, "RatePlanCharge")], [0, nil]],
      ["ratePlanChargeTier", ["ZUORA::RatePlanChargeTier[]", XSD::QName.new(NsApiZuoraCom, "ratePlanChargeTier")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::SubscribeResult,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "SubscribeResult"),
    :schema_element => [
      ["accountId", [nil, XSD::QName.new(NsApiZuoraCom, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "AccountNumber")], [0, 1]],
      ["errors", ["ZUORA::Error[]", XSD::QName.new(NsApiZuoraCom, "Errors")], [0, nil]],
      ["invoiceId", [nil, XSD::QName.new(NsApiZuoraCom, "InvoiceId")], [0, 1]],
      ["invoiceNumber", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "InvoiceNumber")], [0, 1]],
      ["paymentTransactionNumber", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "PaymentTransactionNumber")], [0, 1]],
      ["subscriptionId", [nil, XSD::QName.new(NsApiZuoraCom, "SubscriptionId")], [0, 1]],
      ["subscriptionNumber", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "SubscriptionNumber")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsApiZuoraCom, "Success")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::SaveResult,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "SaveResult"),
    :schema_element => [
      ["errors", ["ZUORA::Error[]", XSD::QName.new(NsApiZuoraCom, "Errors")], [0, nil]],
      ["id", [nil, XSD::QName.new(NsApiZuoraCom, "Id")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsApiZuoraCom, "Success")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::DeleteResult,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "DeleteResult"),
    :schema_element => [
      ["errors", "ZUORA::Error[]", [0, nil]],
      ["id", nil, [0, 1]],
      ["success", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::QueryResult,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "QueryResult"),
    :schema_element => [
      ["done", "SOAP::SOAPBoolean"],
      ["queryLocator", nil],
      ["records", "ZUORA::ZObject[]", [0, nil]],
      ["size", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::Error,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "Error"),
    :schema_element => [
      ["code", ["ZUORA::ErrorCode", XSD::QName.new(NsApiZuoraCom, "Code")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "Message")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "Field")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::ApiFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::LoginFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "LoginFault"),
    :schema_basetype => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::InvalidTypeFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "InvalidTypeFault"),
    :schema_basetype => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::InvalidValueFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "InvalidValueFault"),
    :schema_basetype => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::MalformedQueryFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "MalformedQueryFault"),
    :schema_basetype => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::InvalidQueryLocatorFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "InvalidQueryLocatorFault"),
    :schema_basetype => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::UnexpectedErrorFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "UnexpectedErrorFault"),
    :schema_basetype => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ZUORA::ErrorCode,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "ErrorCode")
  )

  LiteralRegistry.register(
    :class => ZUORA::ZObject,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Account,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Account"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AccountNumber")], [0, 1]],
      ["allowInvoiceEdit", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "AllowInvoiceEdit")], [0, 1]],
      ["autoPay", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "AutoPay")], [0, 1]],
      ["batch", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Batch")], [0, 1]],
      ["billCycleDay", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "BillCycleDay")], [0, 1]],
      ["billToId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "BillToId")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "CreatedDate")], [0, 1]],
      ["crmId", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CrmId")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Currency")], [0, 1]],
      ["customerServiceRepName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CustomerServiceRepName")], [0, 1]],
      ["defaultPaymentMethodId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "DefaultPaymentMethodId")], [0, 1]],
      ["paymentGateway", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PaymentGateway")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Notes")], [0, 1]],
      ["paymentTerm", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PaymentTerm")], [0, 1]],
      ["purchaseOrderNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PurchaseOrderNumber")], [0, 1]],
      ["salesRepName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "SalesRepName")], [0, 1]],
      ["soldToId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "SoldToId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Status")], [0, 1]],
      ["updatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "UpdatedDate")], [0, 1]],
      ["invoiceDeliveryPrefsEmail", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "InvoiceDeliveryPrefsEmail")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Refund,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Refund"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["accountingCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AccountingCode")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Amount")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Comment")], [0, 1]],
      ["createdById", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "CreatedDate")], [0, 1]],
      ["gateway", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Gateway")], [0, 1]],
      ["gatewayResponse", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "GatewayResponse")], [0, 1]],
      ["gatewayResponseCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "GatewayResponseCode")], [0, 1]],
      ["methodType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "MethodType")], [0, 1]],
      ["paymentId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "PaymentId")], [0, 1]],
      ["referenceID", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ReferenceID")], [0, 1]],
      ["refundDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "RefundDate")], [0, 1]],
      ["refundNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "RefundNumber")], [0, 1]],
      ["refundTransactionTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "RefundTransactionTime")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Status")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Amendment,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Amendment"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["contractEffectiveDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "ContractEffectiveDate")], [0, 1]],
      ["customerAcceptanceDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "CustomerAcceptanceDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Description")], [0, 1]],
      ["effectiveDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EffectiveDate")], [0, 1]],
      ["initialTerm", ["SOAP::SOAPLong", XSD::QName.new(NsObjectApiZuoraCom, "InitialTerm")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["renewalTerm", ["SOAP::SOAPLong", XSD::QName.new(NsObjectApiZuoraCom, "RenewalTerm")], [0, 1]],
      ["serviceActivationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "ServiceActivationDate")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Status")], [0, 1]],
      ["subscriptionId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "SubscriptionId")], [0, 1]],
      ["termCommitment", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "TermCommitment")], [0, 1]],
      ["termStartDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "TermStartDate")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Type")], [0, 1]],
      ["ratePlanData", ["ZUORA::RatePlanData", XSD::QName.new(NsObjectApiZuoraCom, "RatePlanData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Contact,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Contact"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["address1", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Address1")], [0, 1]],
      ["address2", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Address2")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "City")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Country")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "CreatedDate")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Fax")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "FirstName")], [0, 1]],
      ["homePhone", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "HomePhone")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "LastName")], [0, 1]],
      ["mobilePhone", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "MobilePhone")], [0, 1]],
      ["nickName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "NickName")], [0, 1]],
      ["otherPhone", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "OtherPhone")], [0, 1]],
      ["otherPhoneType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "OtherPhoneType")], [0, 1]],
      ["personalEmail", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PersonalEmail")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PostalCode")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "State")], [0, 1]],
      ["updatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "UpdatedDate")], [0, 1]],
      ["workEmail", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "WorkEmail")], [0, 1]],
      ["workPhone", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "WorkPhone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Invoice,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Invoice"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Amount")], [0, 1]],
      ["balance", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Balance")], [0, 1]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Body")], [0, 1]],
      ["dueDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "DueDate")], [0, 1]],
      ["invoiceDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "InvoiceDate")], [0, 1]],
      ["invoiceNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "InvoiceNumber")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Status")], [0, 1]],
      ["targetDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "TargetDate")], [0, 1]]
    ]
  )
  
  LiteralRegistry.register(
    :class => ZUORA::InvoiceItemAdjustment,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "InvoiceItemAdjustment"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Amount")], [0, 1]],
      ["sourceId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "SourceId")], [0, 1]],
      ["invoiceId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "InvoiceId")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Type")], [0, 1]],    
      ["sourceType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "SourceType")], [0, 1]],
      ["adjustmentDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "AdjustmentDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::BillRun,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Invoice"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["includesOneTime", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "IncludesOneTime")], [0, 1]],
      ["includesRecurring", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "IncludesRecurring")], [0, 1]],
      ["includesUsage", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "IncludesUsage")], [0, 1]],
      ["invoiceDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "InvoiceDate")], [0, 1]],
      ["targetDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "TargetDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Payment,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Payment"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Amount")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Comment")], [0, 1]],
      ["effectiveDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EffectiveDate")], [0, 1]],
      ["paymentMethodId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "PaymentMethodId")], [0, 1]],
      ["referenceId", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ReferenceId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Status")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::InvoicePayment,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "InvoicePayment"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Amount")], [0, 1]],
      ["invoiceId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "InvoiceId")], [0, 1]],
      ["paymentId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "PaymentId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::PaymentMethod,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "PaymentMethod"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["achAbaCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AchAbaCode")], [0, 1]],
      ["achAccountName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AchAccountName")], [0, 1]],
      ["achAccountNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AchAccountNumber")], [0, 1]],
      ["achAccountNumberMask", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AchAccountNumberMask")], [0, 1]],
      ["achAccountType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AchAccountType")], [0, 1]],
      ["achBankName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AchBankName")], [0, 1]],
      ["active", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "Active")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "CreatedDate")], [0, 1]],
      ["creditCardAddress1", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardAddress1")], [0, 1]],
      ["creditCardAddress2", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardAddress2")], [0, 1]],
      ["creditCardCity", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardCity")], [0, 1]],
      ["creditCardCountry", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardCountry")], [0, 1]],
      ["creditCardExpirationMonth", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardExpirationMonth")], [0, 1]],
      ["creditCardExpirationYear", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardExpirationYear")], [0, 1]],
      ["creditCardHolderName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardHolderName")], [0, 1]],
      ["creditCardMaskNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardMaskNumber")], [0, 1]],
      ["creditCardNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardNumber")], [0, 1]],
      ["creditCardPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardPostalCode")], [0, 1]],
      ["creditCardState", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardState")], [0, 1]],
      ["creditCardType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "CreditCardType")], [0, 1]],
      ["lastTransactionDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "LastTransactionDateTime")], [0, 1]],
      ["lastTransactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "LastTransactionStatus")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["paypalBaid", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PaypalBaid")], [0, 1]],
      ["paypalEmail", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PaypalEmail")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Type")], [0, 1]],
      ["updatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "UpdatedDate")], [0, 1]],
      ["numConsecutiveFailures", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "NumConsecutiveFailures")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Product,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Product"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Description")], [0, 1]],
      ["effectiveEndDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EffectiveEndDate")], [0, 1]],
      ["effectiveStartDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EffectiveStartDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["sKU", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "SKU")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::ProductRatePlan,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlan"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Description")], [0, 1]],
      ["effectiveEndDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EffectiveEndDate")], [0, 1]],
      ["effectiveStartDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EffectiveStartDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["productId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "ProductId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::ProductRatePlanCharge,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanCharge"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountingCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AccountingCode")], [0, 1]],
      ["defaultQuantity", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "DefaultQuantity")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Description")], [0, 1]],
      ["maxQuantity", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "MaxQuantity")], [0, 1]],
      ["minQuantity", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "MinQuantity")], [0, 1]],
      ["model", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Model")], [0, 1]],
      ["productRatePlanId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanId")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Type")], [0, 1]],
      ["uOM", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "UOM")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["chargeModel", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ChargeModel")], [0, 1]],
      ["revRecCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "RevRecCode")], [0, 1]],
      ["triggerEvent", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "TriggerEvent")], [0, 1]],
      ["chargeType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ChargeType")], [0, 1]],
      ["billingPeriod", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "BillingPeriod")], [0, 1]],
      ["billCycleType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "BillCycleType")], [0, 1]],
      ["billingPeriodAlignement", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "BillingPeriodAlignement")], [0, 1]],
      ["revRecTriggerCondition", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "RevRecTriggerCondition")], [0, 1]],
      ["productRatePlanChargeTierData", ["ZUORA::ProductRatePlanChargeTierData", XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanChargeTierData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::ProductRatePlanChargeTierData,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "ProductRatePlanChargeTierData"),
    :schema_element => [
      ["productRatePlanChargeTier", ["ZUORA::ProductRatePlanChargeTier[]", XSD::QName.new(NsApiZuoraCom, "ProductRatePlanChargeTier")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::ProductRatePlanChargeTier,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanChargeTier"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["endingUnit", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "EndingUnit")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Price")], [0, 1]],
      ["productRatePlanChargeId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanChargeId")], [0, 1]],
      ["startingUnit", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "StartingUnit")], [0, 1]],
      ["tier", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "Tier")], [0, 1]],
      ["active", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "Active")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Currency")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::RatePlan,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "RatePlan"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["amendmentId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AmendmentId")], [0, 1]],
      ["amendmentSubscriptionRatePlanId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AmendmentSubscriptionRatePlanId")], [0, 1]],
      ["amendmentType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AmendmentType")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["productRatePlanId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanId")], [0, 1]],
      ["subscriptionId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "SubscriptionId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::RatePlanCharge,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "RatePlanCharge"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountingCode", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "AccountingCode")], [0, 1]],
      ["chargeModel", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ChargeModel")], [0, 1]],
      ["chargeNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ChargeNumber")], [0, 1]],
      ["chargeType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ChargeType")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Description")], [0, 1]],
      ["dMRC", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "DMRC")], [0, 1]],
      ["dTCV", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "DTCV")], [0, 1]],
      ["includedUnits", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "IncludedUnits")], [0, 1]],
      ["mRR", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "MRR")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["numberOfPeriods", ["SOAP::SOAPLong", XSD::QName.new(NsObjectApiZuoraCom, "NumberOfPeriods")], [0, 1]],
      ["overagePrice", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "OveragePrice")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Price")], [0, 1]],
      ["productRatePlanChargeId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "ProductRatePlanChargeId")], [0, 1]],
      ["quantity", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Quantity")], [0, 1]],
      ["ratePlanId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "RatePlanId")], [0, 1]],
      ["tCV", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "TCV")], [0, 1]],
      ["triggerEvent", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "TriggerEvent")], [0, 1]],
      ["uOM", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "UOM")], [0, 1]],
      ["chargedThroughDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "ChargedThroughDate")], [0, 1]],
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::RatePlanChargeTier,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "RatePlanChargeTier"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["endingUnit", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "EndingUnit")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Price")], [0, 1]],
      ["priceFormat", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PriceFormat")], [0, 1]],
      ["ratePlanChargeId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "RatePlanChargeId")], [0, 1]],
      ["startingUnit", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "StartingUnit")], [0, 1]],
      ["tier", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "Tier")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Subscription,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Subscription"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["autoRenew", ["SOAP::SOAPBoolean", XSD::QName.new(NsObjectApiZuoraCom, "AutoRenew")], [0, 1]],
      ["cancelledDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "CancelledDate")], [0, 1]],
      ["contractAcceptanceDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "ContractAcceptanceDate")], [0, 1]],
      ["contractEffectiveDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "ContractEffectiveDate")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Currency")], [0, 1]],
      ["initialTerm", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "InitialTerm")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Name")], [0, 1]],
      ["notes", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Notes")], [0, 1]],
      ["originalSubscriptionId", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "OriginalSubscriptionId")], [0, 1]],
      ["previousSubscriptionId", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "PreviousSubscriptionId")], [0, 1]],
      ["renewalTerm", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "RenewalTerm")], [0, 1]],
      ["serviceActivationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "ServiceActivationDate")], [0, 1]],
      ["subscriptionEndDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "SubscriptionEndDate")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "Status")], [0, 1]],
      ["termStartDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "TermStartDate")], [0, 1]],
      ["version", ["SOAP::SOAPInt", XSD::QName.new(NsObjectApiZuoraCom, "Version")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Usage,
    :schema_type => XSD::QName.new(NsObjectApiZuoraCom, "Usage"),
    :schema_basetype => XSD::QName.new(NsObjectApiZuoraCom, "zObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsObjectApiZuoraCom, "Id")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsObjectApiZuoraCom, "AccountId")], [0, 1]],
      ["chargeNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "ChargeNumber")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "EndDateTime")], [0, 1]],
      ["quantity", ["SOAP::SOAPDouble", XSD::QName.new(NsObjectApiZuoraCom, "Quantity")], [0, 1]],
      ["rbeStatus", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "RbeStatus")], [0, 1]],
      ["sourceName", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "SourceName")], [0, 1]],
      ["sourceType", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "SourceType")], [0, 1]],
      ["startDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "StartDateTime")], [0, 1]],
      ["submissionDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsObjectApiZuoraCom, "SubmissionDateTime")], [0, 1]],
      ["subscriptionNumber", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "SubscriptionNumber")], [0, 1]],
      ["uOM", ["SOAP::SOAPString", XSD::QName.new(NsObjectApiZuoraCom, "UOM")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::LoginResult,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "LoginResult"),
    :schema_element => [
      ["session", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "Session")]],
      ["serverUrl", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "ServerUrl")]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::SubscribeRequest,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "SubscribeRequest"),
    :schema_element => [
      ["account", ["ZUORA::Account", XSD::QName.new(NsApiZuoraCom, "Account")], [0, 1]],
      ["paymentMethod", ["ZUORA::PaymentMethod", XSD::QName.new(NsApiZuoraCom, "PaymentMethod")], [0, 1]],
      ["billToContact", ["ZUORA::Contact", XSD::QName.new(NsApiZuoraCom, "BillToContact")], [0, 1]],
      ["soldToContact", ["ZUORA::Contact", XSD::QName.new(NsApiZuoraCom, "SoldToContact")], [0, 1]],
      ["subscribeOptions", ["ZUORA::SubscribeOptions", XSD::QName.new(NsApiZuoraCom, "SubscribeOptions")], [0, 1]],
      ["subscriptionData", ["ZUORA::SubscriptionData", XSD::QName.new(NsApiZuoraCom, "SubscriptionData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::SubscribeWithExistingAccountRequest,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "SubscribeWithExistingAccountRequest"),
    :schema_element => [
      ["accountId", [nil, XSD::QName.new(NsApiZuoraCom, "AccountId")], [0, 1]],
      ["subscribeOptions", ["ZUORA::SubscribeOptions", XSD::QName.new(NsApiZuoraCom, "SubscribeOptions")], [0, 1]],
      ["subscriptionData", ["ZUORA::SubscriptionData", XSD::QName.new(NsApiZuoraCom, "SubscriptionData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::SubscribeOptions,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "SubscribeOptions"),
    :schema_element => [
      ["generateInvoice", ["SOAP::SOAPBoolean", XSD::QName.new(NsApiZuoraCom, "GenerateInvoice")], [0, 1]],
      ["processPayments", ["SOAP::SOAPBoolean", XSD::QName.new(NsApiZuoraCom, "ProcessPayments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::SubscriptionData,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "SubscriptionData"),
    :schema_element => [
      ["subscription", ["ZUORA::Subscription", XSD::QName.new(NsApiZuoraCom, "Subscription")], [0, 1]],
      ["ratePlanData", ["ZUORA::RatePlanData[]", XSD::QName.new(NsApiZuoraCom, "RatePlanData")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::RatePlanData,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "RatePlanData"),
    :schema_element => [
      ["ratePlan", ["ZUORA::RatePlan", XSD::QName.new(NsApiZuoraCom, "RatePlan")], [0, 1]],
      ["ratePlanCharge", ["ZUORA::RatePlanCharge[]", XSD::QName.new(NsApiZuoraCom, "RatePlanCharge")], [0, nil]],
      ["ratePlanChargeData", ["ZUORA::RatePlanChargeData[]", XSD::QName.new(NsApiZuoraCom, "RatePlanChargeData")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::RatePlanChargeData,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "RatePlanChargeData"),
    :schema_element => [
      ["ratePlanCharge", ["ZUORA::RatePlanCharge", XSD::QName.new(NsApiZuoraCom, "RatePlanCharge")], [0, nil]],
      ["ratePlanChargeTier", ["ZUORA::RatePlanChargeTier[]", XSD::QName.new(NsApiZuoraCom, "ratePlanChargeTier")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::SubscribeResult,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "SubscribeResult"),
    :schema_element => [
      ["accountId", [nil, XSD::QName.new(NsApiZuoraCom, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "AccountNumber")], [0, 1]],
      ["errors", ["ZUORA::Error[]", XSD::QName.new(NsApiZuoraCom, "Errors")], [0, nil]],
      ["invoiceId", [nil, XSD::QName.new(NsApiZuoraCom, "InvoiceId")], [0, 1]],
      ["invoiceNumber", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "InvoiceNumber")], [0, 1]],
      ["paymentTransactionNumber", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "PaymentTransactionNumber")], [0, 1]],
      ["subscriptionId", [nil, XSD::QName.new(NsApiZuoraCom, "SubscriptionId")], [0, 1]],
      ["subscriptionNumber", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "SubscriptionNumber")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsApiZuoraCom, "Success")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::SaveResult,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "SaveResult"),
    :schema_element => [
      ["errors", ["ZUORA::Error[]", XSD::QName.new(NsApiZuoraCom, "Errors")], [0, nil]],
      ["id", [nil, XSD::QName.new(NsApiZuoraCom, "Id")], [0, 1]],
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(NsApiZuoraCom, "Success")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::DeleteResult,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "DeleteResult"),
    :schema_element => [
      ["errors", "ZUORA::Error[]", [0, nil]],
      ["id", nil, [0, 1]],
      ["success", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::QueryResult,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "QueryResult"),
    :schema_element => [
      ["done", "SOAP::SOAPBoolean"],
      ["queryLocator", nil],
      ["records", "ZUORA::ZObject[]", [0, nil]],
      ["size", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Error,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "Error"),
    :schema_element => [
      ["code", ["ZUORA::ErrorCode", XSD::QName.new(NsApiZuoraCom, "Code")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "Message")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsApiZuoraCom, "Field")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::ApiFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::LoginFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "LoginFault"),
    :schema_basetype => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::InvalidTypeFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "InvalidTypeFault"),
    :schema_basetype => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::InvalidValueFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "InvalidValueFault"),
    :schema_basetype => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::MalformedQueryFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "MalformedQueryFault"),
    :schema_basetype => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::InvalidQueryLocatorFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "InvalidQueryLocatorFault"),
    :schema_basetype => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::UnexpectedErrorFault,
    :schema_type => XSD::QName.new(NsFaultApiZuoraCom, "UnexpectedErrorFault"),
    :schema_basetype => XSD::QName.new(NsFaultApiZuoraCom, "ApiFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::ErrorCode,
    :schema_type => XSD::QName.new(NsApiZuoraCom, "ErrorCode")
  )

  LiteralRegistry.register(
    :class => ZUORA::Login,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "login"),
    :schema_element => [
      ["username", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::LoginResponse,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "loginResponse"),
    :schema_element => [
      ["result", "ZUORA::LoginResult", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Subscribe,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "subscribe"),
    :schema_element => [
      ["subscribes", "ZUORA::SubscribeRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::SubscribeWithExistingAccount,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "subscribeWithExistingAccount"),
    :schema_element => [
      ["subscribeWithExistingAccounts", "ZUORA::SubscribeWithExistingAccountRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::SubscribeResponse,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "subscribeResponse"),
    :schema_element => [
      ["result", "ZUORA::SubscribeResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Create,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "create"),
    :schema_element => [
      ["zObjects", "ZUORA::ZObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::CreateResponse,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "createResponse"),
    :schema_element => [
      ["result", "ZUORA::SaveResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Generate,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "generate"),
    :schema_element => [
      ["zObjects", "ZUORA::ZObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::GenerateResponse,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "generateResponse"),
    :schema_element => [
      ["result", "ZUORA::SaveResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Update,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "update"),
    :schema_element => [
      ["zObjects", "ZUORA::ZObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::UpdateResponse,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "updateResponse"),
    :schema_element => [
      ["result", "ZUORA::SaveResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Delete,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "delete"),
    :schema_element => [
      ["type", "SOAP::SOAPString"],
      ["ids", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::DeleteResponse,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "deleteResponse"),
    :schema_element => [
      ["result", "ZUORA::DeleteResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::Query,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "query"),
    :schema_element => [
      ["queryString", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::QueryResponse,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "queryResponse"),
    :schema_element => [
      ["result", "ZUORA::QueryResult"]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::SessionHeader,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "SessionHeader"),
    :schema_element => [
      ["session", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::DummyHeader,
    :schema_name => XSD::QName.new(NsApiZuoraCom, "DummyHeader"),
    :schema_element => [
      ["account", ["ZUORA::Account", XSD::QName.new(NsApiZuoraCom, "Account")], [0, 1]],
      ["amendment", ["ZUORA::Amendment", XSD::QName.new(NsApiZuoraCom, "Amendment")], [0, 1]],
      ["invoice", ["ZUORA::Invoice", XSD::QName.new(NsApiZuoraCom, "Invoice")], [0, 1]],
      ["payment", ["ZUORA::Payment", XSD::QName.new(NsApiZuoraCom, "Payment")], [0, 1]],
      ["invoicePayment", ["ZUORA::InvoicePayment", XSD::QName.new(NsApiZuoraCom, "InvoicePayment")], [0, 1]],
      ["product", ["ZUORA::Product", XSD::QName.new(NsApiZuoraCom, "Product")], [0, 1]],
      ["productRatePlan", ["ZUORA::ProductRatePlan", XSD::QName.new(NsApiZuoraCom, "ProductRatePlan")], [0, 1]],
      ["productRatePlanCharge", ["ZUORA::ProductRatePlanCharge", XSD::QName.new(NsApiZuoraCom, "ProductRatePlanCharge")], [0, 1]],
      ["productRatePlanChargeTier", ["ZUORA::ProductRatePlanChargeTier", XSD::QName.new(NsApiZuoraCom, "ProductRatePlanChargeTier")], [0, 1]],
      ["ratePlan", ["ZUORA::RatePlan", XSD::QName.new(NsApiZuoraCom, "RatePlan")], [0, 1]],
      ["ratePlanCharge", ["ZUORA::RatePlanCharge", XSD::QName.new(NsApiZuoraCom, "RatePlanCharge")], [0, 1]],
      ["ratePlanChargeTier", ["ZUORA::RatePlanChargeTier", XSD::QName.new(NsApiZuoraCom, "RatePlanChargeTier")], [0, 1]],
      ["usage", ["ZUORA::Usage", XSD::QName.new(NsApiZuoraCom, "Usage")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::ApiFault,
    :schema_name => XSD::QName.new(NsFaultApiZuoraCom, "fault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::LoginFault,
    :schema_name => XSD::QName.new(NsFaultApiZuoraCom, "LoginFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::InvalidTypeFault,
    :schema_name => XSD::QName.new(NsFaultApiZuoraCom, "InvalidTypeFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::InvalidValueFault,
    :schema_name => XSD::QName.new(NsFaultApiZuoraCom, "InvalidValueFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::MalformedQueryFault,
    :schema_name => XSD::QName.new(NsFaultApiZuoraCom, "MalformedQueryFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::InvalidQueryLocatorFault,
    :schema_name => XSD::QName.new(NsFaultApiZuoraCom, "InvalidQueryLocatorFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ZUORA::UnexpectedErrorFault,
    :schema_name => XSD::QName.new(NsFaultApiZuoraCom, "UnexpectedErrorFault"),
    :schema_element => [
      ["faultCode", ["ZUORA::ErrorCode", XSD::QName.new(NsFaultApiZuoraCom, "FaultCode")], [0, 1]],
      ["faultMessage", ["SOAP::SOAPString", XSD::QName.new(NsFaultApiZuoraCom, "FaultMessage")], [0, 1]]
    ]
  )
end

end
