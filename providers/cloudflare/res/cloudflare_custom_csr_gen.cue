package res

cloudflare_custom_csr: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_custom_csr")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
		account_id?: string

		// Account identifier associated with this CSR.
		account_tag?: string

		// The common name (domain) for the CSR. Must be at most 64 characters.
		common_name!: string

		// Two-letter ISO 3166-1 alpha-2 country code.
		country!: string

		// When the CSR was created.
		created_at?: string

		// The PEM-encoded Certificate Signing Request.
		csr?: string

		// Optional description for the CSR.
		description?: string

		// Custom CSR identifier tag.
		id?: string

		// Key algorithm to use for the CSR. Defaults to rsa2048 if not specified.
		// Available values: "rsa2048", "p256v1".
		key_type?: string

		// City or locality name.
		locality!: string

		// Human-readable name for the CSR.
		name?: string

		// Organization name.
		organization!: string

		// Organizational unit name.
		organizational_unit?: string

		// Subject Alternative Names for the CSR. At least one SAN is required.
		sans!: [...string]

		// State or province name.
		state!: string

		// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
		zone_id?: string
	})
}
