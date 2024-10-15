package res

#aws_schemas_discoverer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_schemas_discoverer")
	arn?:         string
	description?: string
	id?:          string
	source_arn!:  string
	tags?: [string]:     string
	tags_all?: [string]: string
}
