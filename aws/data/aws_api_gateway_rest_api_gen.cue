package data

#aws_api_gateway_rest_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_rest_api")
	api_key_source?: string
	arn?:            string
	binary_media_types?: [...string]
	description?: string
	endpoint_configuration?: [...{
		types?: [...string]
		vpc_endpoint_ids?: [...string]
	}]
	execution_arn?:            string
	id?:                       string
	minimum_compression_size?: string
	name!:                     string
	policy?:                   string
	root_resource_id?:         string
	tags?: [string]: string
}
