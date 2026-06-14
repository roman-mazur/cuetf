package data

#cloudflare_custom_csrs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_custom_csrs")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Account identifier associated with this CSR.
			account_tag?: string

			// The common name (domain) for the CSR.
			common_name?: string

			// Two-letter ISO 3166-1 alpha-2 country code.
			country?: string

			// When the CSR was created.
			created_at?: string

			// The PEM-encoded Certificate Signing Request.
			csr?: string

			// Optional description for the CSR.
			description?: string

			// Custom CSR identifier tag.
			id?: string

			// The key algorithm used to generate the CSR.
			// Available values: "rsa2048", "p256v1".
			key_type?: string

			// City or locality name.
			locality?: string

			// Human-readable name for the CSR.
			name?: string

			// Organization name.
			organization?: string

			// Organizational unit name.
			organizational_unit?: string

			// Subject Alternative Names included in the CSR.
			sans?: [...string]

			// State or province name.
			state?: string
		}), [...close({
			// Account identifier associated with this CSR.
			account_tag?: string

			// The common name (domain) for the CSR.
			common_name?: string

			// Two-letter ISO 3166-1 alpha-2 country code.
			country?: string

			// When the CSR was created.
			created_at?: string

			// The PEM-encoded Certificate Signing Request.
			csr?: string

			// Optional description for the CSR.
			description?: string

			// Custom CSR identifier tag.
			id?: string

			// The key algorithm used to generate the CSR.
			// Available values: "rsa2048", "p256v1".
			key_type?: string

			// City or locality name.
			locality?: string

			// Human-readable name for the CSR.
			name?: string

			// Organization name.
			organization?: string

			// Organizational unit name.
			organizational_unit?: string

			// Subject Alternative Names included in the CSR.
			sans?: [...string]

			// State or province name.
			state?: string
		})]])
	})
}
