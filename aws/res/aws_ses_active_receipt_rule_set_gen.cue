package res

#aws_ses_active_receipt_rule_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ses_active_receipt_rule_set")
	arn?:           string
	id?:            string
	rule_set_name!: string
}
