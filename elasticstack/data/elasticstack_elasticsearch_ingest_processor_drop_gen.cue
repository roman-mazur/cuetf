package data

#elasticstack_elasticsearch_ingest_processor_drop: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_ingest_processor_drop")
	description?:    string
	id?:             string
	if?:             string
	ignore_failure?: bool
	json?:           string
	on_failure?: [...string]
	tag?: string
}
