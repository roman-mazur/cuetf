package data

#aws_appconfig_environments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appconfig_environments")
	application_id!: string
	environment_ids?: [...string]
	id?: string
}
