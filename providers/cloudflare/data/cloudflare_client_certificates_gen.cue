package data

#cloudflare_client_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_client_certificates")
	close({
		// Limit to the number of records returned.
		limit?: number

		// Max items to fetch, default: 1000
		max_items?: number

		// Offset the results
		offset?: number

		// Client Certitifcate Status to filter results by.
		// Available values: "all", "active", "pending_reactivation",
		// "pending_revocation", "revoked".
		status?: string

		// Identifier.
		zone_id!: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// The Client Certificate PEM
			certificate?: string

			// Common Name of the Client Certificate
			common_name?: string

			// Country, provided by the CSR
			country?: string

			// The Certificate Signing Request (CSR). Must be newline-encoded.
			csr?: string

			// Date that the Client Certificate expires
			expires_on?: string

			// Unique identifier of the Client Certificate
			fingerprint_sha256?: string

			// Identifier.
			id?: string

			// Date that the Client Certificate was issued by the Certificate
			// Authority
			issued_on?: string

			// Location, provided by the CSR
			location?: string

			// Organization, provided by the CSR
			organization?: string

			// Organizational Unit, provided by the CSR
			organizational_unit?: string

			// The serial number on the created Client Certificate.
			serial_number?: string

			// The type of hash used for the Client Certificate..
			signature?: string

			// Subject Key Identifier
			ski?: string

			// State, provided by the CSR
			state?: string

			// Client Certificates may be active or revoked, and the
			// pending_reactivation or pending_revocation represent
			// in-progress asynchronous transitions
			// Available values: "active", "pending_reactivation",
			// "pending_revocation", "revoked".
			status?: string

			// The number of days the Client Certificate will be valid after
			// the issued_on date
			validity_days?: number

			// Certificate Authority used to issue the Client Certificate
			certificate_authority?: close({
				id?:   string
				name?: string
			})
		}), [...close({
			// The Client Certificate PEM
			certificate?: string

			// Common Name of the Client Certificate
			common_name?: string

			// Country, provided by the CSR
			country?: string

			// The Certificate Signing Request (CSR). Must be newline-encoded.
			csr?: string

			// Date that the Client Certificate expires
			expires_on?: string

			// Unique identifier of the Client Certificate
			fingerprint_sha256?: string

			// Identifier.
			id?: string

			// Date that the Client Certificate was issued by the Certificate
			// Authority
			issued_on?: string

			// Location, provided by the CSR
			location?: string

			// Organization, provided by the CSR
			organization?: string

			// Organizational Unit, provided by the CSR
			organizational_unit?: string

			// The serial number on the created Client Certificate.
			serial_number?: string

			// The type of hash used for the Client Certificate..
			signature?: string

			// Subject Key Identifier
			ski?: string

			// State, provided by the CSR
			state?: string

			// Client Certificates may be active or revoked, and the
			// pending_reactivation or pending_revocation represent
			// in-progress asynchronous transitions
			// Available values: "active", "pending_reactivation",
			// "pending_revocation", "revoked".
			status?: string

			// The number of days the Client Certificate will be valid after
			// the issued_on date
			validity_days?: number

			// Certificate Authority used to issue the Client Certificate
			certificate_authority?: close({
				id?:   string
				name?: string
			})
		})]])
	})
}
