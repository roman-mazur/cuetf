package data

#elasticstack_elasticsearch_enrich_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_elasticsearch_enrich_policy")
	enrich_fields?: [...string]
	id?: string
	indices?: [...string]
	match_field?: string
	name!:        string
	policy_type?: string
	query?:       string
}
