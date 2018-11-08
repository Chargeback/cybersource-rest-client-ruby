=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::PaymentInstrumentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentInstrumentsApi' do
  before do
    # run before each test
    @instance = CyberSource::PaymentInstrumentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentInstrumentsApi' do
    it 'should create an instance of PaymentInstrumentsApi' do
      expect(@instance).to be_instance_of(CyberSource::PaymentInstrumentsApi)
    end
  end

  # unit tests for tms_v1_instrumentidentifiers_token_id_paymentinstruments_get
  # Retrieve all Payment Instruments associated with an Instrument Identifier
  # @param profile_id The id of a profile containing user specific TMS configuration.
  # @param token_id The TokenId of an Instrument Identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :offset Starting Payment Instrument record in zero-based dataset that should be returned as the first object in the array. Default is 0.
  # @option opts [String] :limit The maximum number of Payment Instruments that can be returned in the array starting from the offset record in zero-based dataset. Default is 20, maximum is 100.
  # @return [TmsV1InstrumentidentifiersPaymentinstrumentsGet200Response]
  describe 'tms_v1_instrumentidentifiers_token_id_paymentinstruments_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tms_v1_paymentinstruments_post
  # Create a Payment Instrument
  # @param profile_id The id of a profile containing user specific TMS configuration.
  # @param body Please specify the customers payment details for card or bank account.
  # @param [Hash] opts the optional parameters
  # @return [TmsV1PaymentinstrumentsPost201Response]
  describe 'tms_v1_paymentinstruments_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tms_v1_paymentinstruments_token_id_delete
  # Delete a Payment Instrument
  # @param profile_id The id of a profile containing user specific TMS configuration.
  # @param token_id The TokenId of a Payment Instrument.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'tms_v1_paymentinstruments_token_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tms_v1_paymentinstruments_token_id_get
  # Retrieve a Payment Instrument
  # @param profile_id The id of a profile containing user specific TMS configuration.
  # @param token_id The TokenId of a Payment Instrument.
  # @param [Hash] opts the optional parameters
  # @return [TmsV1PaymentinstrumentsPost201Response]
  describe 'tms_v1_paymentinstruments_token_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tms_v1_paymentinstruments_token_id_patch
  # Update a Payment Instrument
  # @param profile_id The id of a profile containing user specific TMS configuration.
  # @param token_id The TokenId of a Payment Instrument.
  # @param body Please specify the customers payment details.
  # @param [Hash] opts the optional parameters
  # @return [TmsV1PaymentinstrumentsPost201Response]
  describe 'tms_v1_paymentinstruments_token_id_patch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
