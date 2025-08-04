package data

#elasticstack_elasticsearch_ingest_processor_gsub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_gsub")
	close({
		description?:    string
		field!:          string
		id?:             string
		if?:             string
		ignore_failure?: bool
		ignore_missing?: bool
		json?:           string
		on_failure?: [...string]
		pattern!:      string
		replacement!:  string
		tag?:          string
		target_field?: string
	})
}
