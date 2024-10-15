package data

#elasticstack_elasticsearch_ingest_processor_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_set")
	copy_from?:          string
	description?:        string
	field!:              string
	id?:                 string
	if?:                 string
	ignore_empty_value?: bool
	ignore_failure?:     bool
	json?:               string
	media_type?:         string
	on_failure?: [...string]
	override?: bool
	tag?:      string
	value?:    string
}
