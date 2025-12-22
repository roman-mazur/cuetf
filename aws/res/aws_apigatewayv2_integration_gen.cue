package res

import "list"

#aws_apigatewayv2_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_apigatewayv2_integration")
	close({
		api_id!:                    string
		connection_id?:             string
		connection_type?:           string
		content_handling_strategy?: string
		credentials_arn?:           string
		description?:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                                    string
		id?:                                        string
		integration_method?:                        string
		integration_response_selection_expression?: string
		integration_subtype?:                       string
		response_parameters?: matchN(1, [#response_parameters, [...#response_parameters]])
		integration_type!:       string
		integration_uri?:        string
		passthrough_behavior?:   string
		payload_format_version?: string
		request_parameters?: [string]: string
		request_templates?: [string]:  string
		template_selection_expression?: string
		tls_config?: matchN(1, [#tls_config, list.MaxItems(1) & [...#tls_config]])
		timeout_milliseconds?: number
	})

	#response_parameters: close({
		mappings!: [string]: string
		status_code!: string
	})

	#tls_config: close({
		server_name_to_verify?: string
	})
}
