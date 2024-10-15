package data

#elasticstack_elasticsearch_ingest_processor_uri_parts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_uri_parts")
	description?:    string
	field!:          string
	id?:             string
	if?:             string
	ignore_failure?: bool
	json?:           string
	keep_original?:  bool
	on_failure?: [...string]
	remove_if_successful?: bool
	tag?:                  string
	target_field?:         string
}
