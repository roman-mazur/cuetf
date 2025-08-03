package res

import "list"

#aws_api_gateway_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_integration")
	close({
		cache_key_parameters?: [...string]
		tls_config?: matchN(1, [#tls_config, list.MaxItems(1) & [...#tls_config]])
		cache_namespace?:         string
		connection_id?:           string
		connection_type?:         string
		content_handling?:        string
		credentials?:             string
		http_method!:             string
		id?:                      string
		integration_http_method?: string
		passthrough_behavior?:    string
		region?:                  string
		request_parameters?: [string]: string
		request_templates?: [string]:  string
		resource_id!:          string
		rest_api_id!:          string
		timeout_milliseconds?: number
		type!:                 string
		uri?:                  string
	})

	#tls_config: close({
		insecure_skip_verification?: bool
	})
}
