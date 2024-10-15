package data

#elasticstack_elasticsearch_ingest_processor_date: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_date")
	description?: string
	field!:       string
	formats!: [...string]
	id?:             string
	if?:             string
	ignore_failure?: bool
	json?:           string
	locale?:         string
	on_failure?: [...string]
	output_format?: string
	tag?:           string
	target_field?:  string
	timezone?:      string
}
