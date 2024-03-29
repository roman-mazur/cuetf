package data

#aws_cloudfront_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudfront_function")
	arn?:                string
	code?:               string
	comment?:            string
	etag?:               string
	id?:                 string
	last_modified_time?: string
	name:                string
	runtime?:            string
	stage:               string
	status?:             string
}
