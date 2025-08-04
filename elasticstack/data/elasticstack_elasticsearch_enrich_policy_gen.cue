package data

#elasticstack_elasticsearch_enrich_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_enrich_policy")
	close({
		// Fields to add to matching incoming documents. These fields must
		// be present in the source indices.
		enrich_fields?: [...string]

		// Internal identifier of the resource
		id?: string

		// Array of one or more source indices used to create the enrich
		// index.
		indices?: [...string]

		// Field in source indices used to match incoming documents.
		match_field?: string

		// The name of the policy.
		name!: string

		// The type of enrich policy, can be one of geo_match, match,
		// range.
		policy_type?: string

		// Query used to filter documents in the enrich index. The policy
		// only uses documents matching this query to enrich incoming
		// documents. Defaults to a match_all query.
		query?: string
	})
}
