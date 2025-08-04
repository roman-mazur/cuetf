package data

#cloudflare_zero_trust_access_mtls_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_mtls_certificates")
	close({
		account_id?: string
		max_items?:  number
		result?: matchN(1, [close({
			associated_hostnames?: [...string]
			created_at?:  string
			expires_on?:  string
			fingerprint?: string
			id?:          string
			name?:        string
			updated_at?:  string
		}), [...close({
			associated_hostnames?: [...string]
			created_at?:  string
			expires_on?:  string
			fingerprint?: string
			id?:          string
			name?:        string
			updated_at?:  string
		})]])
		zone_id?: string
	})
}
