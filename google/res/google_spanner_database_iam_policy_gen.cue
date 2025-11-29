package res

#google_spanner_database_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_spanner_database_iam_policy")
	close({
		database!:    string
		etag?:        string
		id?:          string
		instance!:    string
		policy_data!: string
		project?:     string
	})
}
