package res

#cloudflare_zero_trust_access_ai_controls_mcp_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_access_ai_controls_mcp_server")
	close({
		account_id!:       string
		auth_credentials?: string

		// Available values: "oauth", "bearer", "unauthenticated".
		auth_type!:   string
		created_at?:  string
		created_by?:  string
		description?: string
		error?:       string
		hostname!:    string

		// server id
		id!:          string
		last_synced?: string
		modified_at?: string
		modified_by?: string
		name!:        string
		prompts?: [...{
			[string]: string
		}]
		status?: string
		tools?: [...{
			[string]: string
		}]
	})
}
