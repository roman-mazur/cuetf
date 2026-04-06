package data

#google_dataproc_autoscaling_policy_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_dataproc_autoscaling_policy_iam_policy")
	close({
		etag?:        string
		id?:          string
		location?:    string
		policy_data?: string
		policy_id!:   string
		project?:     string
	})
}
