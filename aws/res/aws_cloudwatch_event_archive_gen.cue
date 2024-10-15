package res

#aws_cloudwatch_event_archive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_event_archive")
	arn?:              string
	description?:      string
	event_pattern?:    string
	event_source_arn!: string
	id?:               string
	name!:             string
	retention_days?:   number
}
