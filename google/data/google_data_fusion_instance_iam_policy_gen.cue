package data

#google_data_fusion_instance_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_data_fusion_instance_iam_policy")
	close({
		etag?:        string
		id?:          string
		name!:        string
		policy_data?: string
		project?:     string
		region?:      string
	})
}
