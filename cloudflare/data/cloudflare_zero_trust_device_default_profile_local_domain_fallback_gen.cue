package data

#cloudflare_zero_trust_device_default_profile_local_domain_fallback: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_default_profile_local_domain_fallback")
	close({
		account_id!:  string
		description?: string
		dns_server?: [...string]
		suffix?: string
	})
}
