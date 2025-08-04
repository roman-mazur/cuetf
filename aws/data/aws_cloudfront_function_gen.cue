package data

#aws_cloudfront_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_function")
	close({
		arn?:     string
		code?:    string
		comment?: string
		etag?:    string
		id?:      string
		key_value_store_associations?: [...string]
		last_modified_time?: string
		name!:               string
		runtime?:            string
		stage!:              string
		status?:             string
	})
}
