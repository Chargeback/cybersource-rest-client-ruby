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

# Unit tests for CyberSource::ReportingV3ReportDefinitionsNameGet200Response
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportingV3ReportDefinitionsNameGet200Response' do
  before do
    # run before each test
    @instance = CyberSource::ReportingV3ReportDefinitionsNameGet200Response.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportingV3ReportDefinitionsNameGet200Response' do
    it 'should create an instance of ReportingV3ReportDefinitionsNameGet200Response' do
      expect(@instance).to be_instance_of(CyberSource::ReportingV3ReportDefinitionsNameGet200Response)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "report_definition_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "report_defintion_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "attributes"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "supported_formats"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["application/xml", "text/csv"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.supported_formats = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
