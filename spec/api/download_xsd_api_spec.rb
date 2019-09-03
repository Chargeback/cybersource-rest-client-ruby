=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::DownloadXSDApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DownloadXSDApi' do
  before do
    # run before each test
    @instance = CyberSource::DownloadXSDApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DownloadXSDApi' do
    it 'should create an instance of DownloadXSDApi' do
      expect(@instance).to be_instance_of(CyberSource::DownloadXSDApi)
    end
  end

  # unit tests for get_xsdv2
  # Used to download XSDs for reports
  # Downloads XSDs for reports on no-auth.
  # @param report_definition_name_version Name and version of XSD file to download. Some XSDs only have one version. In that case version name is not needed. Some example values are DecisionManagerDetailReport, DecisionManagerTypes
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_xsdv2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
