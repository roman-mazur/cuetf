package data

#cloudflare_zero_trust_access_mtls_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_mtls_certificate")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// The hostnames of the applications that will use this
		// certificate.
		associated_hostnames?: [...string]

		// UUID.
		certificate_id?: string
		created_at?:     string

		// The MD5 fingerprint of the certificate.
		fingerprint?: string
		expires_on?:  string

		// UUID.
		id?: string

		// The name of the certificate.
		name?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?:    string
		updated_at?: string
	})
}
