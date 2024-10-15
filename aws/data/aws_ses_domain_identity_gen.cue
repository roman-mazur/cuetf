package data

#aws_ses_domain_identity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ses_domain_identity")
	arn?:                string
	domain!:             string
	id?:                 string
	verification_token?: string
}
