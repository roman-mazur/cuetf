package res

#aws_ses_domain_dkim: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ses_domain_dkim")
	dkim_tokens?: [...string]
	domain: string
	id?:    string
}