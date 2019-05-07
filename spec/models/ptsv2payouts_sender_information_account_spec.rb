=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::Ptsv2payoutsSenderInformationAccount
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Ptsv2payoutsSenderInformationAccount' do
  before do
    # run before each test
    @instance = CyberSource::Ptsv2payoutsSenderInformationAccount.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Ptsv2payoutsSenderInformationAccount' do
    it 'should create an instance of Ptsv2payoutsSenderInformationAccount' do
      expect(@instance).to be_instance_of(CyberSource::Ptsv2payoutsSenderInformationAccount)
    end
  end
  describe 'test attribute "funds_source"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
