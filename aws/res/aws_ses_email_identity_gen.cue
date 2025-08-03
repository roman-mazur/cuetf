package res

#aws_ses_email_identity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ses_email_identity")
	close({
		arn?:    string
		email!:  string
		id?:     string
		region?: string
	})
}
