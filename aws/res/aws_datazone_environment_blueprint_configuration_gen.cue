package res

#aws_datazone_environment_blueprint_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_environment_blueprint_configuration")
	close({
		domain_id!: string
		enabled_regions!: [...string]
		environment_blueprint_id!: string
		manage_access_role_arn?:   string
		provisioning_role_arn?:    string
		region?:                   string
		regional_parameters?: [string]: [string]: string
	})
}
