package res

#cloudflare_fallback_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_fallback_domain")
	account_id!: string
	id?:         string
	policy_id?:  string
	domains?: #domains | [_, ...] & [...#domains]

	#domains: {
		description?: string
		dns_server?: [...string]
		suffix?: string
	}
}
