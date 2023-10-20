package res

import "list"

#aws_api_gateway_rest_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_rest_api")
	api_key_source?: string
	arn?:            string
	binary_media_types?: [...string]
	body?:                         string
	created_date?:                 string
	description?:                  string
	disable_execute_api_endpoint?: bool
	execution_arn?:                string
	fail_on_warnings?:             bool
	id?:                           string
	minimum_compression_size?:     string
	name:                          string
	parameters?: [string]: string
	policy?:            string
	put_rest_api_mode?: string
	root_resource_id?:  string
	tags?: [string]: string
	tags_all?: [string]: string
	endpoint_configuration?: #endpoint_configuration | list.MaxItems(1) & [...#endpoint_configuration]

	#endpoint_configuration: {
		types: [...string]
		vpc_endpoint_ids?: [...string]
	}
}
