package res

#google_cloud_run_service_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloud_run_service_iam_policy")
	close({
		etag?:        string
		id?:          string
		location?:    string
		policy_data!: string
		project?:     string
		service!:     string
	})
}
