package res

#aws_sesv2_email_identity_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sesv2_email_identity_policy")
	close({
		email_identity!: string
		id?:             string
		policy!:         string
		policy_name!:    string
		region?:         string
	})
}
