module ZUORA

endpoint_url = ARGV.shift
obj = Soap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   login(parameters)
#
# ARGS
#   parameters      Login - {http://api.zuora.com/}login
#
# RETURNS
#   parameters      LoginResponse - {http://api.zuora.com/}loginResponse
#
# RAISES
#   fault           LoginFault - {http://fault.api.zuora.com/}LoginFault
#   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.login(parameters)

# SYNOPSIS
#   subscribe(parameters)
#
# ARGS
#   parameters      Subscribe - {http://api.zuora.com/}subscribe
#
# RETURNS
#   parameters      SubscribeResponse - {http://api.zuora.com/}subscribeResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.subscribe(parameters)

# SYNOPSIS
#   subscribeWithExistingAccount(parameters)
#
# ARGS
#   parameters      SubscribeWithExistingAccount - {http://api.zuora.com/}subscribeWithExistingAccount
#
# RETURNS
#   parameters      SubscribeResponse - {http://api.zuora.com/}subscribeResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.subscribeWithExistingAccount(parameters)

# SYNOPSIS
#   create(parameters)
#
# ARGS
#   parameters      Create - {http://api.zuora.com/}create
#
# RETURNS
#   parameters      CreateResponse - {http://api.zuora.com/}createResponse
#
# RAISES
#   fault           InvalidTypeFault - {http://fault.api.zuora.com/}InvalidTypeFault
#   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.create(parameters)

# SYNOPSIS
#   update(parameters)
#
# ARGS
#   parameters      Update - {http://api.zuora.com/}update
#
# RETURNS
#   parameters      UpdateResponse - {http://api.zuora.com/}updateResponse
#
# RAISES
#   fault           InvalidTypeFault - {http://fault.api.zuora.com/}InvalidTypeFault
#   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.update(parameters)

# SYNOPSIS
#   delete(parameters)
#
# ARGS
#   parameters      Delete - {http://api.zuora.com/}delete
#
# RETURNS
#   parameters      DeleteResponse - {http://api.zuora.com/}deleteResponse
#
# RAISES
#   fault           InvalidTypeFault - {http://fault.api.zuora.com/}InvalidTypeFault
#   fault           InvalidValueFault - {http://fault.api.zuora.com/}InvalidValueFault
#   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.delete(parameters)

# SYNOPSIS
#   query(parameters)
#
# ARGS
#   parameters      Query - {http://api.zuora.com/}query
#
# RETURNS
#   parameters      QueryResponse - {http://api.zuora.com/}queryResponse
#
# RAISES
#   fault           MalformedQueryFault - {http://fault.api.zuora.com/}MalformedQueryFault
#   fault           InvalidQueryLocatorFault - {http://fault.api.zuora.com/}InvalidQueryLocatorFault
#   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.query(parameters)




end
