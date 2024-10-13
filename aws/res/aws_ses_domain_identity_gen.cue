package res

#aws_ses_domain_identity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ses_domain_identity")
	arn?:                string
	domain!:             string
	id?:                 string
	verification_token?: string
}
