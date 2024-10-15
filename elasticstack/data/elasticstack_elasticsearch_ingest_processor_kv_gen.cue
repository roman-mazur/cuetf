package data

#elasticstack_elasticsearch_ingest_processor_kv: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_kv")
	description?: string
	exclude_keys?: [...string]
	field!:          string
	field_split!:    string
	id?:             string
	if?:             string
	ignore_failure?: bool
	ignore_missing?: bool
	include_keys?: [...string]
	json?: string
	on_failure?: [...string]
	prefix?:         string
	strip_brackets?: bool
	tag?:            string
	target_field?:   string
	trim_key?:       string
	trim_value?:     string
	value_split!:    string
}
