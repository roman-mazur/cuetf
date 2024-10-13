package res

#aws_cloudfront_key_value_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudfront_key_value_store")
	arn?:                string
	comment?:            string
	etag?:               string
	id?:                 string
	last_modified_time?: string
	name!:               string
	timeouts?:           #timeouts

	#timeouts: create?: string
}
