package res

import "list"

#aws_apigatewayv2_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apigatewayv2_integration")
	api_id!:                                    string
	connection_id?:                             string
	connection_type?:                           string
	content_handling_strategy?:                 string
	credentials_arn?:                           string
	description?:                               string
	id?:                                        string
	integration_method?:                        string
	integration_response_selection_expression?: string
	integration_subtype?:                       string
	integration_type!:                          string
	integration_uri?:                           string
	passthrough_behavior?:                      string
	payload_format_version?:                    string
	request_parameters?: [string]: string
	request_templates?: [string]:  string
	template_selection_expression?: string
	timeout_milliseconds?:          number
	response_parameters?: #response_parameters | [...#response_parameters]
	tls_config?: #tls_config | list.MaxItems(1) & [...#tls_config]

	#response_parameters: {
		mappings!: [string]: string
		status_code!: string
	}

	#tls_config: server_name_to_verify?: string
}
