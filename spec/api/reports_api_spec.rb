=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::ReportsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportsApi' do
  before do
    # run before each test
    @instance = CyberSource::ReportsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportsApi' do
    it 'should create an instance of ReportsApi' do
      expect(@instance).to be_instance_of(CyberSource::ReportsApi)
    end
  end

  # unit tests for create_report
  # Create Adhoc Report
  # Create one time report
  # @param request_body Report subscription request payload
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_report_by_report_id
  # Get Report based on reportId
  # ReportId is mandatory input
  # @param report_id Valid Report Id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :organization_id Valid Cybersource Organization Id
  # @return [ReportingV3ReportsIdGet200Response]
  describe 'get_report_by_report_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_reports
  # Retrieve available reports
  # Retrieve list of available reports
  # @param start_time Valid report Start Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX 
  # @param end_time Valid report End Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX 
  # @param time_query_type Specify time you woud like to search
  # @param [Hash] opts the optional parameters
  # @option opts [String] :organization_id Valid Cybersource Organization Id
  # @option opts [String] :report_mime_type Valid Report Format
  # @option opts [String] :report_frequency Valid Report Frequency
  # @option opts [String] :report_name Valid Report Name
  # @option opts [Integer] :report_definition_id Valid Report Definition Id
  # @option opts [String] :report_status Valid Report Status
  # @return [ReportingV3ReportsGet200Response]
  describe 'search_reports test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
