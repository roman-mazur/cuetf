package data

#aws_datazone_environment_blueprint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_environment_blueprint")
	blueprint_provider?: string
	description?:        string
	domain_id!:          string
	id?:                 string
	managed!:            bool
	name!:               string
}
