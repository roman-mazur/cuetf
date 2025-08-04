package res

#aws_cloudfront_public_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_public_key")
	close({
		caller_reference?: string
		comment?:          string
		encoded_key!:      string
		etag?:             string
		id?:               string
		name?:             string
		name_prefix?:      string
	})
}
