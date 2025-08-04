package res

#aws_signer_signing_profile_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_signer_signing_profile_permission")
	close({
		action!:    string
		id?:        string
		principal!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		profile_name!:        string
		profile_version?:     string
		statement_id?:        string
		statement_id_prefix?: string
	})
}
