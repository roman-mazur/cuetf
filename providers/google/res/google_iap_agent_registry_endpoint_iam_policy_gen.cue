package res

google_iap_agent_registry_endpoint_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iap_agent_registry_endpoint_iam_policy")
	close({
		endpoint_id!: string
		etag?:        string
		id?:          string
		location?:    string
		policy_data!: string
		project?:     string
	})
}
