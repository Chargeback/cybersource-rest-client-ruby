=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class ReportDefinitionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
	  @api_client.set_configuration(config)
    end
    # Get report definition
    # View the attributes of an individual report type. For a list of values for reportDefinitionName, see the [Reporting Developer Guide](https://www.cybersource.com/developers/documentation/reporting_and_reconciliation/) 
    # @param report_definition_name Name of the Report definition to retrieve
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Cybersource Organization Id
    # @return [ReportingV3ReportDefinitionsNameGet200Response]
    def get_resource_info_by_report_definition(report_definition_name, opts = {})
      data, status_code, headers = get_resource_info_by_report_definition_with_http_info(report_definition_name, opts)
      return data, status_code, headers
    end

    # Get report definition
    # View the attributes of an individual report type. For a list of values for reportDefinitionName, see the [Reporting Developer Guide](https://www.cybersource.com/developers/documentation/reporting_and_reconciliation/) 
    # @param report_definition_name Name of the Report definition to retrieve
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Cybersource Organization Id
    # @return [Array<(ReportingV3ReportDefinitionsNameGet200Response, Fixnum, Hash)>] ReportingV3ReportDefinitionsNameGet200Response data, response status code and response headers
    def get_resource_info_by_report_definition_with_http_info(report_definition_name, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: ReportDefinitionsApi.get_resource_info_by_report_definition ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'report_definition_name' is set
      if @api_client.config.client_side_validation && report_definition_name.nil?
        fail ArgumentError, "Missing the required parameter 'report_definition_name' when calling ReportDefinitionsApi.get_resource_info_by_report_definition"
      end
      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length > 32
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportDefinitionsApi.get_resource_info_by_report_definition, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportDefinitionsApi.get_resource_info_by_report_definition, the character length must be great than or equal to 1.'
      end

      #if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        #fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling ReportDefinitionsApi.get_resource_info_by_report_definition, must conform to the pattern /[a-zA-Z0-9-_]+/."
      #end

      # resource path
      local_var_path = 'reporting/v3/report-definitions/{reportDefinitionName}'.sub('{' + 'reportDefinitionName' + '}', report_definition_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ReportingV3ReportDefinitionsNameGet200Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: ReportDefinitionsApi#get_resource_info_by_report_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Get reporting resource information
    # View a list of supported reports and their attributes before subscribing to them. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Cybersource Organization Id
    # @return [ReportingV3ReportDefinitionsGet200Response]
    def get_resource_v2_info(opts = {})
      data, status_code, headers = get_resource_v2_info_with_http_info(opts)
      return data, status_code, headers
    end

    # Get reporting resource information
    # View a list of supported reports and their attributes before subscribing to them. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Cybersource Organization Id
    # @return [Array<(ReportingV3ReportDefinitionsGet200Response, Fixnum, Hash)>] ReportingV3ReportDefinitionsGet200Response data, response status code and response headers
    def get_resource_v2_info_with_http_info(opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: ReportDefinitionsApi.get_resource_v2_info ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length > 32
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportDefinitionsApi.get_resource_v2_info, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportDefinitionsApi.get_resource_v2_info, the character length must be great than or equal to 1.'
      end

      #if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        #fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling ReportDefinitionsApi.get_resource_v2_info, must conform to the pattern /[a-zA-Z0-9-_]+/."
      #end

      # resource path
      local_var_path = 'reporting/v3/report-definitions'

      # query parameters
      query_params = {}
      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ReportingV3ReportDefinitionsGet200Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: ReportDefinitionsApi#get_resource_v2_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
  end
end
