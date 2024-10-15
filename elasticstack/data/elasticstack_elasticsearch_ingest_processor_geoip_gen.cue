package data

#elasticstack_elasticsearch_ingest_processor_geoip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_geoip")
	database_file?:  string
	field!:          string
	first_only?:     bool
	id?:             string
	ignore_missing?: bool
	json?:           string
	properties?: [...string]
	target_field?: string
}
