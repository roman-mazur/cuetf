package data

#elasticstack_elasticsearch_ingest_processor_set_security_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_set_security_user")
	close({
		description?:    string
		field!:          string
		id?:             string
		if?:             string
		ignore_failure?: bool
		json?:           string
		on_failure?: [...string]
		properties?: [...string]
		tag?: string
	})
}
