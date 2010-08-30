require 'singleton'

require 'zuora/ZUORA'
require 'zuora/ZUORADriver'
require 'zuora/ZUORAMappingRegistry'

module Zuora
  module Billing
    class Api
      include Singleton
      def initialize
        @driver = ZUORA::Soap.new
      end

      attr_reader :driver
    end
  end
end