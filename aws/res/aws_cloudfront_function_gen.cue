package res

#aws_cloudfront_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfront_function")
	close({
		arn?:     string
		code!:    string
		comment?: string
		etag?:    string
		id?:      string
		key_value_store_associations?: [...string]
		live_stage_etag?: string
		name!:            string
		publish?:         bool
		runtime!:         string
		status?:          string
	})
}
