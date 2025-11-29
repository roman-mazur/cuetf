package data

#google_logging_log_view_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_logging_log_view_iam_policy")
	close({
		bucket!:      string
		etag?:        string
		id?:          string
		location?:    string
		name!:        string
		parent!:      string
		policy_data?: string
	})
}
