package res

#aws_emr_studio_session_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emr_studio_session_mapping")
	close({
		id?:            string
		identity_id?:   string
		identity_name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		identity_type!:      string
		session_policy_arn!: string
		studio_id!:          string
	})
}
