package res

#cloudflare_zero_trust_access_mtls_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_mtls_certificate")
	close({
		account_id?: string
		associated_hostnames?: [...string]
		certificate!: string
		expires_on?:  string
		fingerprint?: string
		id?:          string
		name!:        string
		zone_id?:     string
	})
}
