package data

#cloudflare_zero_trust_gateway_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_gateway_certificates")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Indicate the read-only deployment status of the certificate on
			// Cloudflare's edge. Gateway TLS interception can use
			// certificates in the 'available' (previously called 'active')
			// state.
			// Available values: "pending_deployment", "available",
			// "pending_deletion", "inactive".
			binding_status?: string

			// Provide the CA certificate (read-only).
			certificate?: string
			created_at?:  string
			expires_on?:  string

			// Provide the SHA256 fingerprint of the certificate (read-only).
			fingerprint?: string

			// Identify the certificate with a UUID.
			id?: string

			// Indicate whether Gateway TLS interception uses this certificate
			// (read-only). You cannot set this value directly. To configure
			// interception, use the Gateway configuration setting named
			// `certificate` (read-only).
			in_use?: bool

			// Indicate the organization that issued the certificate
			// (read-only).
			issuer_org?: string

			// Provide the entire issuer field of the certificate (read-only).
			issuer_raw?: string

			// Indicate the read-only certificate type, BYO-PKI (custom) or
			// Gateway-managed.
			// Available values: "custom", "gateway_managed".
			type?:        string
			updated_at?:  string
			uploaded_on?: string
		}), [...close({
			// Indicate the read-only deployment status of the certificate on
			// Cloudflare's edge. Gateway TLS interception can use
			// certificates in the 'available' (previously called 'active')
			// state.
			// Available values: "pending_deployment", "available",
			// "pending_deletion", "inactive".
			binding_status?: string

			// Provide the CA certificate (read-only).
			certificate?: string
			created_at?:  string
			expires_on?:  string

			// Provide the SHA256 fingerprint of the certificate (read-only).
			fingerprint?: string

			// Identify the certificate with a UUID.
			id?: string

			// Indicate whether Gateway TLS interception uses this certificate
			// (read-only). You cannot set this value directly. To configure
			// interception, use the Gateway configuration setting named
			// `certificate` (read-only).
			in_use?: bool

			// Indicate the organization that issued the certificate
			// (read-only).
			issuer_org?: string

			// Provide the entire issuer field of the certificate (read-only).
			issuer_raw?: string

			// Indicate the read-only certificate type, BYO-PKI (custom) or
			// Gateway-managed.
			// Available values: "custom", "gateway_managed".
			type?:        string
			updated_at?:  string
			uploaded_on?: string
		})]])
	})
}
