package res

#aws_cloudfront_key_value_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_key_value_store")
	close({
		timeouts?:           #timeouts
		arn?:                string
		comment?:            string
		etag?:               string
		id?:                 string
		last_modified_time?: string
		name!:               string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string
	})
}
