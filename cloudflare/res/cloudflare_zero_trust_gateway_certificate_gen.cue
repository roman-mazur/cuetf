package res

#cloudflare_zero_trust_gateway_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_certificate")
	close({
		account_id!: string

		// The deployment status of the certificate on Cloudflare's edge.
		// Certificates in the 'available' (previously called 'active')
		// state may be used for Gateway TLS interception.
		// Available values: "pending_deployment", "available",
		// "pending_deletion", "inactive".
		binding_status?: string

		// The CA certificate
		certificate?: string
		created_at?:  string

		// The SHA256 fingerprint of the certificate.
		fingerprint?: string
		expires_on?:  string

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
		type?: string

		// Number of days the generated certificate will be valid, minimum
		// 1 day and maximum 30 years. Defaults to 5 years. In terraform,
		// validity_period_days can only be used while creating a
		// certificate, and this CAN NOT be used to extend the validity
		// of an already generated certificate.
		validity_period_days?: number
		updated_at?:           string
		uploaded_on?:          string
	})
}
