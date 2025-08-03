package res

#aws_sesv2_account_suppression_attributes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sesv2_account_suppression_attributes")
	close({
		id?:     string
		region?: string
		suppressed_reasons!: [...string]
	})
}
