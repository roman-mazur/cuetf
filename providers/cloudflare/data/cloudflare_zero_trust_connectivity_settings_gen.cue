package data

cloudflare_zero_trust_connectivity_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_connectivity_settings")
	close({
		// Cloudflare account ID
		account_id!: string

		// A flag to enable the ICMP proxy for the account network.
		icmp_proxy_enabled?: bool

		// Cloudflare account ID
		id?: string

		// A flag to enable WARP to WARP traffic.
		offramp_warp_enabled?: bool
	})
}
