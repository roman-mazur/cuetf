package res

#cloudflare_zero_trust_access_short_lived_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zero_trust_access_short_lived_certificate")
	account_id?:     string
	application_id!: string
	aud?:            string
	id?:             string
	public_key?:     string
	zone_id?:        string
}
