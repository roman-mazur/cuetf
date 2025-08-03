package res

#aws_securityhub_product_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_product_subscription")
	close({
		arn?:         string
		id?:          string
		product_arn!: string
		region?:      string
	})
}
