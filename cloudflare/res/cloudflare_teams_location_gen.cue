package res

#cloudflare_teams_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_teams_location")
	account_id:               string
	anonymized_logs_enabled?: bool
	client_default?:          bool
	doh_subdomain?:           string
	id?:                      string
	ip?:                      string
	ipv4_destination?:        string
	name:                     string
	policy_ids?: [...string]
	networks?: #networks | [...#networks]

	#networks: {
		id?:     string
		network: string
	}
}