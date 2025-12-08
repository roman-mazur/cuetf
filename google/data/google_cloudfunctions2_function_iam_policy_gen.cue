package data

#google_cloudfunctions2_function_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_cloudfunctions2_function_iam_policy")
	close({
		cloud_function!: string
		etag?:           string
		id?:             string
		location?:       string
		policy_data?:    string
		project?:        string
	})
}
