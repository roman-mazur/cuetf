package data

#elasticstack_elasticsearch_ingest_processor_csv: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_ingest_processor_csv")
	description?:    string
	empty_value?:    string
	field!:          string
	id?:             string
	if?:             string
	ignore_failure?: bool
	ignore_missing?: bool
	json?:           string
	on_failure?: [...string]
	quote?:     string
	separator?: string
	tag?:       string
	target_fields!: [...string]
	trim?: bool
}
