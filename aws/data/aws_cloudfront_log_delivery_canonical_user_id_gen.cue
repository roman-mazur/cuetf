package data

#aws_cloudfront_log_delivery_canonical_user_id: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_log_delivery_canonical_user_id")
	close({
		id?:     string
		region?: string
	})
}
