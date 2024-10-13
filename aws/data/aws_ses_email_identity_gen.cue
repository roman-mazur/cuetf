package data

#aws_ses_email_identity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ses_email_identity")
	arn?:   string
	email!: string
	id?:    string
}
