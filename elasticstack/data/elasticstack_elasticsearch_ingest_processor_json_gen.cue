package data

#elasticstack_elasticsearch_ingest_processor_json: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_ingest_processor_json")
	add_to_root?:                   bool
	add_to_root_conflict_strategy?: string
	allow_duplicate_keys?:          bool
	description?:                   string
	field!:                         string
	id?:                            string
	if?:                            string
	ignore_failure?:                bool
	json?:                          string
	on_failure?: [...string]
	tag?:          string
	target_field?: string
}
