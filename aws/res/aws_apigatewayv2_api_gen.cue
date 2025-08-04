package res

import "list"

#aws_apigatewayv2_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_api")
	close({
		api_endpoint?:                 string
		api_key_selection_expression?: string
		arn?:                          string
		body?:                         string
		credentials_arn?:              string
		description?:                  string
		disable_execute_api_endpoint?: bool
		execution_arn?:                string
		fail_on_warnings?:             bool
		id?:                           string
		ip_address_type?:              string
		cors_configuration?: matchN(1, [#cors_configuration, list.MaxItems(1) & [...#cors_configuration]])
		name!:                       string
		protocol_type!:              string
		region?:                     string
		route_key?:                  string
		route_selection_expression?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		target?:  string
		version?: string
	})

	#cors_configuration: close({
		allow_credentials?: bool
		allow_headers?: [...string]
		allow_methods?: [...string]
		allow_origins?: [...string]
		expose_headers?: [...string]
		max_age?: number
	})
}
