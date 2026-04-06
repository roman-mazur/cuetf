package res

#aws_datazone_environment_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_datazone_environment_profile")
	close({
		user_parameters?: matchN(1, [#user_parameters, [...#user_parameters]])
		aws_account_id?:                   string
		aws_account_region!:               string
		created_at?:                       string
		created_by?:                       string
		description?:                      string
		domain_identifier!:                string
		environment_blueprint_identifier!: string
		id?:                               string
		name!:                             string
		project_identifier!:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		updated_at?: string
	})

	#user_parameters: close({
		name?:  string
		value?: string
	})
}
