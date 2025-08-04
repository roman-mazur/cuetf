package data

#elasticstack_elasticsearch_ingest_processor_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_script")
	close({
		description?:    string
		id?:             string
		if?:             string
		ignore_failure?: bool
		json?:           string
		lang?:           string
		on_failure?: [...string]
		params?:    string
		script_id?: string
		source?:    string
		tag?:       string
	})
}
