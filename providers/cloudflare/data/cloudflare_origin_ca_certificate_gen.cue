package data

cloudflare_origin_ca_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_origin_ca_certificate")
	close({
		// The Origin CA certificate. Will be newline-encoded.
		certificate?: string

		// The x509 serial number of the Origin CA certificate.
		certificate_id?: string

		// The Certificate Signing Request (CSR). Must be newline-encoded.
		csr?: string

		// When the certificate will expire.
		expires_on?: string
		filter?: close({
			// Identifier.
			zone_id!: string
		})

		// Array of hostnames or wildcard names bound to the certificate.
		// Hostnames must be fully qualified domain names (FQDNs) belonging to zones on
		// your account (e.g., `example.com` or `sub.example.com`). Wildcards are
		// supported only as a `*.` prefix for a single level (e.g., `*.example.com`).
		// Double wildcards (`*.*.example.com`) and interior wildcards
		// (`foo.*.example.com`) are not allowed. The wildcard suffix must be a
		// multi-label domain (`*.example.com` is valid, but `*.com` is not).
		// Unicode/IDN hostnames are accepted and automatically converted to punycode.
		hostnames?: [...string]

		// The x509 serial number of the Origin CA certificate.
		id?: string

		// Signature type desired on certificate ("origin-rsa" (rsa), "origin-ecc"
		// (ecdsa), or "keyless-certificate" (for Keyless SSL servers).
		// Available values: "origin-rsa", "origin-ecc", "keyless-certificate".
		request_type?: string

		// The number of days for which the certificate was requested to be valid. Only
		// returned in the Create Certificate response, where it echoes the requested
		// value. Not returned when getting or listing certificates.
		// Available values: 7, 30, 90, 365, 730, 1095, 5475.
		requested_validity?: number

		// When the certificate was revoked.
		revoked_at?: string
	})
}
