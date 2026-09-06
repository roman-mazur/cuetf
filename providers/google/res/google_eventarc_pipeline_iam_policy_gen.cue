package res

google_eventarc_pipeline_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_eventarc_pipeline_iam_policy")
	close({
		etag?:        string
		id?:          string
		location?:    string
		pipeline_id!: string
		policy_data!: string
		project?:     string
	})
}
