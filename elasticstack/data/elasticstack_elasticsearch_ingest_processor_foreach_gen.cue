package data

#elasticstack_elasticsearch_ingest_processor_foreach: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_ingest_processor_foreach")
	description?:    string
	field!:          string
	id?:             string
	if?:             string
	ignore_failure?: bool
	ignore_missing?: bool
	json?:           string
	on_failure?: [...string]
	processor!: string
	tag?:       string
}
