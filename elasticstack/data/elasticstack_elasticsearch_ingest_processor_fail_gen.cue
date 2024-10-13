package data

#elasticstack_elasticsearch_ingest_processor_fail: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_ingest_processor_fail")
	description?:    string
	id?:             string
	if?:             string
	ignore_failure?: bool
	json?:           string
	message!:        string
	on_failure?: [...string]
	tag?: string
}
