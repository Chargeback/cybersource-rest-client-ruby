=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::AuthenticationExemptionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthenticationExemptionsApi' do
  before do
    # run before each test
    @instance = CyberSource::AuthenticationExemptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthenticationExemptionsApi' do
    it 'should create an instance of AuthenticationExemptionsApi' do
      expect(@instance).to be_instance_of(CyberSource::AuthenticationExemptionsApi)
    end
  end

  # unit tests for authentication_exemptions
  # Authentication Exemptions Service
  # A new CYBS branded service to connect to VISA’s REST API to enable Visa Transaction Advisor (VTA) as a standalone service for merchants to support PSD2/SCA adoption and exemptions processing startegy in Europe.VTA Provides intelligent risk data to merchants as inputs to their in-house fraud management tools for fraud mitigation on Visa transactions. 
  # @param authentication_exemptions_request 
  # @param [Hash] opts the optional parameters
  # @return [RiskV1AuthenticationExemptionsPost201Response]
  describe 'authentication_exemptions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end