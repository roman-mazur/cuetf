package res

#cloudflare_zero_trust_device_default_profile_local_domain_fallback: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_default_profile_local_domain_fallback")
	close({
		account_id!: string
		domains!: matchN(1, [close({
			// A description of the fallback domain, displayed in the client
			// UI.
			description?: string

			// A list of IP addresses to handle domain resolution.
			dns_server?: [...string]

			// The domain suffix to match when resolving locally.
			suffix!: string
		}), [...close({
			// A description of the fallback domain, displayed in the client
			// UI.
			description?: string

			// A list of IP addresses to handle domain resolution.
			dns_server?: [...string]

			// The domain suffix to match when resolving locally.
			suffix!: string
		})]])
		id?: string
	})
}
