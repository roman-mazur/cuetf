package res

#cloudflare_zero_trust_dns_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dns_location")
	account_id!:              string
	anonymized_logs_enabled?: bool
	client_default?:          bool
	doh_subdomain?:           string
	ecs_support?:             bool
	id?:                      string
	ip?:                      string
	ipv4_destination?:        string
	name!:                    string
	policy_ids?: [...string]
	networks?: #networks | [...#networks]

	#networks: {
		id?:      string
		network!: string
	}
}
