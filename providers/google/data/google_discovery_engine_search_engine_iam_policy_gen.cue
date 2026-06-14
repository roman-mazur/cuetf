package data

#google_discovery_engine_search_engine_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_discovery_engine_search_engine_iam_policy")
	close({
		collection_id!: string
		engine_id!:     string
		etag?:          string
		id?:            string
		location?:      string
		policy_data?:   string
		project?:       string
	})
}
