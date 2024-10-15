package data

#aws_db_event_categories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_event_categories")
	event_categories?: [...string]
	id?:          string
	source_type?: string
}
