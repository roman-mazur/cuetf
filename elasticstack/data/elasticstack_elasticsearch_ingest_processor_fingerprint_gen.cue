package data

#elasticstack_elasticsearch_ingest_processor_fingerprint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_fingerprint")
	close({
		description?: string
		fields!: [...string]
		id?:             string
		if?:             string
		ignore_failure?: bool
		ignore_missing?: bool
		json?:           string
		method?:         string
		on_failure?: [...string]
		salt?:         string
		tag?:          string
		target_field?: string
	})
}
