package res

#aws_datazone_environment_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_environment_profile")
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
	updated_at?:                       string
	user_parameters?: #user_parameters | [...#user_parameters]

	#user_parameters: {
		name?:  string
		value?: string
	}
}
