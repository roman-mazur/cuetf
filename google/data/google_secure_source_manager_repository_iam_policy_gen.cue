package data

#google_secure_source_manager_repository_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_secure_source_manager_repository_iam_policy")
	close({
		etag?:          string
		id?:            string
		location?:      string
		policy_data?:   string
		project?:       string
		repository_id!: string
	})
}
