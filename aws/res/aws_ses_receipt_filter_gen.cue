package res

#aws_ses_receipt_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ses_receipt_filter")
	arn?:   string
	cidr:   string
	id?:    string
	name:   string
	policy: string
}
