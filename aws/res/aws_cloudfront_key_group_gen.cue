package res

#aws_cloudfront_key_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfront_key_group")
	close({
		comment?: string
		etag?:    string
		id?:      string
		items!: [...string]
		name!: string
	})
}
