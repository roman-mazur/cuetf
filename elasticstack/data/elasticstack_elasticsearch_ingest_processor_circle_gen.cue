package data

#elasticstack_elasticsearch_ingest_processor_circle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_ingest_processor_circle")
	description?:    string
	error_distance!: number
	field!:          string
	id?:             string
	if?:             string
	ignore_failure?: bool
	ignore_missing?: bool
	json?:           string
	on_failure?: [...string]
	shape_type!:   string
	tag?:          string
	target_field?: string
}
