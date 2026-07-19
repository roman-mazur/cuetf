package res

google_iap_agent_registry_mcp_server_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iap_agent_registry_mcp_server_iam_policy")
	close({
		etag?:          string
		id?:            string
		location?:      string
		mcp_server_id!: string
		policy_data!:   string
		project?:       string
	})
}
