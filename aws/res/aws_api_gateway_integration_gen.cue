package res

import "list"

#aws_api_gateway_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_integration")
	cache_key_parameters?: [...string]
	cache_namespace?:         string
	connection_id?:           string
	connection_type?:         string
	content_handling?:        string
	credentials?:             string
	http_method:              string
	id?:                      string
	integration_http_method?: string
	passthrough_behavior?:    string
	request_parameters?: [string]: string
	request_templates?: [string]: string
	resource_id:           string
	rest_api_id:           string
	timeout_milliseconds?: number
	type:                  string
	uri?:                  string
	tls_config?:           #tls_config | list.MaxItems(1) & [...#tls_config]

	#tls_config: insecure_skip_verification?: bool
}
