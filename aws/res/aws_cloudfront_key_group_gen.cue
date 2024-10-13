package res

#aws_cloudfront_key_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudfront_key_group")
	comment?: string
	etag?:    string
	id?:      string
	items!: [...string]
	name!: string
}
