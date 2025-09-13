package data

#google_apigee_environment_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_environment_iam_policy")
	close({
		env_id!:      string
		etag?:        string
		id?:          string
		org_id!:      string
		policy_data?: string
	})
}
