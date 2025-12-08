package data

#google_gemini_repository_group_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_gemini_repository_group_iam_policy")
	close({
		code_repository_index!: string
		etag?:                  string
		id?:                    string
		location?:              string
		policy_data?:           string
		project?:               string
		repository_group_id!:   string
	})
}
