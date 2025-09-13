package res

#google_clouddeploy_delivery_pipeline_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_clouddeploy_delivery_pipeline_iam_policy")
	close({
		etag?:        string
		id?:          string
		location?:    string
		name!:        string
		policy_data!: string
		project?:     string
	})
}
