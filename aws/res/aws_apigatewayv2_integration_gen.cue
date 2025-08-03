package res

import "list"

#aws_apigatewayv2_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_integration")
	close({
		api_id!:        string
		connection_id?: string
		response_parameters?: matchN(1, [#response_parameters, [...#response_parameters]])
		connection_type?:                           string
		content_handling_strategy?:                 string
		credentials_arn?:                           string
		description?:                               string
		id?:                                        string
		integration_method?:                        string
		integration_response_selection_expression?: string
		tls_config?: matchN(1, [#tls_config, list.MaxItems(1) & [...#tls_config]])
		integration_subtype?:    string
		integration_type!:       string
		integration_uri?:        string
		passthrough_behavior?:   string
		payload_format_version?: string
		region?:                 string
		request_parameters?: [string]: string
		request_templates?: [string]:  string
		template_selection_expression?: string
		timeout_milliseconds?:          number
	})

	#response_parameters: close({
		mappings!: [string]: string
		status_code!: string
	})

	#tls_config: close({
		server_name_to_verify?: string
	})
}
