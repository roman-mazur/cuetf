package res

#aws_sesv2_email_identity_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sesv2_email_identity_policy")
	email_identity!: string
	id?:             string
	policy!:         string
	policy_name!:    string
}
