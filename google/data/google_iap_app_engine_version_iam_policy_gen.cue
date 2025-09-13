package data

#google_iap_app_engine_version_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_iap_app_engine_version_iam_policy")
	close({
		app_id!:      string
		etag?:        string
		id?:          string
		policy_data?: string
		project?:     string
		service!:     string
		version_id!:  string
	})
}
