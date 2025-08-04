package data

#elasticstack_elasticsearch_enrich_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_enrich_policy")
	close({
		enrich_fields?: [...string]
		id?: string
		indices?: [...string]
		match_field?: string
		name!:        string
		policy_type?: string
		query?:       string
	})
}
