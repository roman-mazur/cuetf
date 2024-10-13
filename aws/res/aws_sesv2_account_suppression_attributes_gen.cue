package res

#aws_sesv2_account_suppression_attributes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sesv2_account_suppression_attributes")
	id?: string
	suppressed_reasons!: [...string]
}
