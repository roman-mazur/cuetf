package res

import "list"

#aws_api_gateway_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_api_gateway_integration")
	close({
		cache_key_parameters?: [...string]
		cache_namespace?:  string
		connection_id?:    string
		connection_type?:  string
		content_handling?: string
		credentials?:      string
		tls_config?: matchN(1, [#tls_config, list.MaxItems(1) & [...#tls_config]])
		http_method!:             string
		id?:                      string
		integration_http_method?: string
		integration_target?:      string
		passthrough_behavior?:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		request_parameters?: [string]: string
		request_templates?: [string]:  string
		resource_id!:            string
		response_transfer_mode?: string
		rest_api_id!:            string
		timeout_milliseconds?:   number
		type!:                   string
		uri?:                    string
	})

	#tls_config: close({
		insecure_skip_verification?: bool
	})
}
