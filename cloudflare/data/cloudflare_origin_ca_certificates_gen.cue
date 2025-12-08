package data

#cloudflare_origin_ca_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_origin_ca_certificates")
	close({
		// Limit to the number of records returned.
		limit?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The Origin CA certificate. Will be newline-encoded.
			certificate?: string

			// The Certificate Signing Request (CSR). Must be newline-encoded.
			csr?: string

			// When the certificate will expire.
			expires_on?: string

			// Array of hostnames or wildcard names (e.g., *.example.com)
			// bound to the certificate.
			hostnames?: [...string]

			// Identifier.
			id?: string

			// Signature type desired on certificate ("origin-rsa" (rsa),
			// "origin-ecc" (ecdsa), or "keyless-certificate" (for Keyless
			// SSL servers).
			// Available values: "origin-rsa", "origin-ecc",
			// "keyless-certificate".
			request_type?: string

			// The number of days for which the certificate should be valid.
			// Available values: 7, 30, 90, 365, 730, 1095, 5475.
			requested_validity?: number
		}), [...close({
			// The Origin CA certificate. Will be newline-encoded.
			certificate?: string

			// The Certificate Signing Request (CSR). Must be newline-encoded.
			csr?: string

			// When the certificate will expire.
			expires_on?: string

			// Array of hostnames or wildcard names (e.g., *.example.com)
			// bound to the certificate.
			hostnames?: [...string]

			// Identifier.
			id?: string

			// Signature type desired on certificate ("origin-rsa" (rsa),
			// "origin-ecc" (ecdsa), or "keyless-certificate" (for Keyless
			// SSL servers).
			// Available values: "origin-rsa", "origin-ecc",
			// "keyless-certificate".
			request_type?: string

			// The number of days for which the certificate should be valid.
			// Available values: 7, 30, 90, 365, 730, 1095, 5475.
			requested_validity?: number
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// Offset the results
		offset?: number

		// Identifier.
		zone_id!: string
	})
}
