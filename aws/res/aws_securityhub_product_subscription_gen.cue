package res

#aws_securityhub_product_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_securityhub_product_subscription")
	arn?:         string
	id?:          string
	product_arn!: string
}
