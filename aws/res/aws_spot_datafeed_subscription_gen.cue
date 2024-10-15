package res

#aws_spot_datafeed_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_spot_datafeed_subscription")
	bucket!: string
	id?:     string
	prefix?: string
}
