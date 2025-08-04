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
			// The deployment status of the certificate on Cloudflare's edge.
			// Certificates in the 'available' (previously called 'active')
			// state may be used for Gateway TLS interception.
			// Available values: "pending_deployment", "available",
			// "pending_deletion", "inactive".
			binding_status?: string

			// The CA certificate
			certificate?: string
			created_at?:  string
			expires_on?:  string

			// The SHA256 fingerprint of the certificate.
			fingerprint?: string

			// Certificate UUID tag.
			id?: string

			// Use this certificate for Gateway TLS interception
			in_use?: bool

			// The organization that issued the certificate.
			issuer_org?: string

			// The entire issuer field of the certificate.
			issuer_raw?: string

			// The type of certificate, either BYO-PKI (custom) or
			// Gateway-managed.
			// Available values: "custom", "gateway_managed".
			type?:        string
			updated_at?:  string
			uploaded_on?: string
		}), [...close({
			// The deployment status of the certificate on Cloudflare's edge.
			// Certificates in the 'available' (previously called 'active')
			// state may be used for Gateway TLS interception.
			// Available values: "pending_deployment", "available",
			// "pending_deletion", "inactive".
			binding_status?: string

			// The CA certificate
			certificate?: string
			created_at?:  string
			expires_on?:  string

			// The SHA256 fingerprint of the certificate.
			fingerprint?: string

			// Certificate UUID tag.
			id?: string

			// Use this certificate for Gateway TLS interception
			in_use?: bool

			// The organization that issued the certificate.
			issuer_org?: string

			// The entire issuer field of the certificate.
			issuer_raw?: string

			// The type of certificate, either BYO-PKI (custom) or
			// Gateway-managed.
			// Available values: "custom", "gateway_managed".
			type?:        string
			updated_at?:  string
			uploaded_on?: string
		})]])
	})
}
