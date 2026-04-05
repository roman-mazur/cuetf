package data

#google_iam_workload_identity_pool_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_iam_workload_identity_pool_iam_policy")
	close({
		etag?:                      string
		id?:                        string
		policy_data?:               string
		project?:                   string
		workload_identity_pool_id!: string
	})
}
