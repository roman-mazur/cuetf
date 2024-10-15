package cloudflare

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/provider")
	api_base_path?:              string
	api_client_logging?:         bool
	api_hostname?:               string
	api_key?:                    string
	api_token?:                  string
	api_user_service_key?:       string
	email?:                      string
	max_backoff?:                number
	min_backoff?:                number
	retries?:                    number
	rps?:                        number
	user_agent_operator_suffix?: string
}
