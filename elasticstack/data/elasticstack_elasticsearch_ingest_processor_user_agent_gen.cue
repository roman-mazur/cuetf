package data

#elasticstack_elasticsearch_ingest_processor_user_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_user_agent")
	extract_device_type?: bool
	field!:               string
	id?:                  string
	ignore_missing?:      bool
	json?:                string
	properties?: [...string]
	regex_file?:   string
	target_field?: string
}
