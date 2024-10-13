package res

#cloudflare_zero_trust_split_tunnel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zero_trust_split_tunnel")
	account_id!: string
	id?:         string
	mode!:       string
	policy_id?:  string
	tunnels?: #tunnels | [_, ...] & [...#tunnels]

	#tunnels: {
		address?:     string
		description?: string
		host?:        string
	}
}
