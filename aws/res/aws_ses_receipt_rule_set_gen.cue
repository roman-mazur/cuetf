package res

#aws_ses_receipt_rule_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ses_receipt_rule_set")
	close({
		arn?:           string
		id?:            string
		region?:        string
		rule_set_name!: string
	})
}
