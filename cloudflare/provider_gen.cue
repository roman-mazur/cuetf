package cloudflare

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/provider")
	close({
		api_key?:                    string
		api_token?:                  string
		api_user_service_key?:       string
		base_url?:                   string
		email?:                      string
		user_agent_operator_suffix?: string
	})
}
