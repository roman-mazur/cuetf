package data

#aws_ses_active_receipt_rule_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ses_active_receipt_rule_set")
	arn?:           string
	id?:            string
	rule_set_name?: string
}
