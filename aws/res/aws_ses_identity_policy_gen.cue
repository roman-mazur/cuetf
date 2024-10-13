package res

#aws_ses_identity_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ses_identity_policy")
	id?:       string
	identity!: string
	name!:     string
	policy!:   string
}
