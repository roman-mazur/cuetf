package data

#cloudflare_zero_trust_gateway_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_certificates")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The read only deployment status of the certificate on
			// Cloudflare's edge. Certificates in the 'available' (previously
			// called 'active') state may be used for Gateway TLS
			// interception.
			// Available values: "pending_deployment", "available",
			// "pending_deletion", "inactive".
			binding_status?: string

			// The CA certificate(read only).
			certificate?: string
			created_at?:  string
			expires_on?:  string

			// The SHA256 fingerprint of the certificate(read only).
			fingerprint?: string

			// Certificate UUID tag.
			id?: string

			// Read-only field that shows whether Gateway TLS interception is
			// using this certificate. This value cannot be set directly. To
			// configure the certificate for interception, use the Gateway
			// configuration setting named certificate.
			in_use?: bool

			// The organization that issued the certificate(read only).
			issuer_org?: string

			// The entire issuer field of the certificate(read only).
			issuer_raw?: string

			// The type of certificate, either BYO-PKI (custom) or
			// Gateway-managed(read only).
			// Available values: "custom", "gateway_managed".
			type?:        string
			updated_at?:  string
			uploaded_on?: string
		}), [...close({
			// The read only deployment status of the certificate on
			// Cloudflare's edge. Certificates in the 'available' (previously
			// called 'active') state may be used for Gateway TLS
			// interception.
			// Available values: "pending_deployment", "available",
			// "pending_deletion", "inactive".
			binding_status?: string

			// The CA certificate(read only).
			certificate?: string
			created_at?:  string
			expires_on?:  string

			// The SHA256 fingerprint of the certificate(read only).
			fingerprint?: string

			// Certificate UUID tag.
			id?: string

			// Read-only field that shows whether Gateway TLS interception is
			// using this certificate. This value cannot be set directly. To
			// configure the certificate for interception, use the Gateway
			// configuration setting named certificate.
			in_use?: bool

			// The organization that issued the certificate(read only).
			issuer_org?: string

			// The entire issuer field of the certificate(read only).
			issuer_raw?: string

			// The type of certificate, either BYO-PKI (custom) or
			// Gateway-managed(read only).
			// Available values: "custom", "gateway_managed".
			type?:        string
			updated_at?:  string
			uploaded_on?: string
		})]])
	})
}
