package data

#cloudflare_zero_trust_access_mtls_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_mtls_certificates")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// The hostnames of the applications that will use this
			// certificate.
			associated_hostnames?: [...string]
			created_at?: string

			// The MD5 fingerprint of the certificate.
			fingerprint?: string
			expires_on?:  string

			// The ID of the application that will use this certificate.
			id?: string

			// The name of the certificate.
			name?:       string
			updated_at?: string
		}), [...close({
			// The hostnames of the applications that will use this
			// certificate.
			associated_hostnames?: [...string]
			created_at?: string

			// The MD5 fingerprint of the certificate.
			fingerprint?: string
			expires_on?:  string

			// The ID of the application that will use this certificate.
			id?: string

			// The name of the certificate.
			name?:       string
			updated_at?: string
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
