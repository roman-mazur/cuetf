package data

#cloudflare_origin_ca_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_origin_ca_certificate")
	close({
		// The Origin CA certificate. Will be newline-encoded.
		certificate?: string
		filter?: close({
			// Limit to the number of records returned.
			limit?: number

			// Offset the results
			offset?: number

			// Identifier.
			zone_id!: string
		})

		// Identifier.
		certificate_id?: string

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
	})
}
