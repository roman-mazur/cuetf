package res

#aws_datazone_environment_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_environment_profile")
	close({
		aws_account_id?:                   string
		aws_account_region!:               string
		created_at?:                       string
		created_by?:                       string
		description?:                      string
		domain_identifier!:                string
		environment_blueprint_identifier!: string
		id?:                               string
		user_parameters?: matchN(1, [#user_parameters, [...#user_parameters]])
		name!:               string
		project_identifier!: string
		region?:             string
		updated_at?:         string
	})

	#user_parameters: close({
		name?:  string
		value?: string
	})
}
