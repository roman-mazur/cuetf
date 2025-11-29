package data

#google_gke_hub_scope_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_gke_hub_scope_iam_policy")
	close({
		etag?:        string
		id?:          string
		policy_data?: string
		project?:     string
		scope_id!:    string
	})
}
