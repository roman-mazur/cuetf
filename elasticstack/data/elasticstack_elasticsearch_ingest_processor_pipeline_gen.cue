package data

#elasticstack_elasticsearch_ingest_processor_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_pipeline")
	description?:    string
	id?:             string
	if?:             string
	ignore_failure?: bool
	json?:           string
	name!:           string
	on_failure?: [...string]
	tag?: string
}
