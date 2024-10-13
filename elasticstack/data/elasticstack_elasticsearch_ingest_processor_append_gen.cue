package data

#elasticstack_elasticsearch_ingest_processor_append: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_ingest_processor_append")
	allow_duplicates?: bool
	description?:      string
	field!:            string
	id?:               string
	if?:               string
	ignore_failure?:   bool
	json?:             string
	media_type?:       string
	on_failure?: [...string]
	tag?: string
	value!: [...string]
}
