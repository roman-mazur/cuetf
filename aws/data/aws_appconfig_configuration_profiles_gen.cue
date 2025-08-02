package data

#aws_appconfig_configuration_profiles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appconfig_configuration_profiles")
	close({
		application_id!: string
		configuration_profile_ids?: [...string]
		id?:     string
		region?: string
	})
}
