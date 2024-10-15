package data

#aws_cloudfront_origin_access_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_origin_access_control")
	description?:                       string
	etag?:                              string
	id!:                                string
	name?:                              string
	origin_access_control_origin_type?: string
	signing_behavior?:                  string
	signing_protocol?:                  string
}
