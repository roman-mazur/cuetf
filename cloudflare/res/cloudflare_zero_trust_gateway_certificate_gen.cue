package res

#cloudflare_zero_trust_gateway_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_certificate")
	close({
		account_id!: string

		// Whether to activate the certificate on Cloudflare's edge. When
		// true, the certificate will be activated. When false, the
		// certificate will be deactivated at the edge. This is a
		// Terraform-only field and does not appear in the API response.
		// Monitor `binding_status` for the activation status. Once a
		// certificate is activated, you may use the certificate to
		// intercept traffic
		activate?: bool

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

		// Sets the certificate validity period in days (range: 1-10,950
		// days / ~30 years). Defaults to 1,825 days (5 years).
		// **Important**: This field is only settable during the
		// certificate creation. Certificates becomes immutable after
		// creation - use the `/activate` and `/deactivate` endpoints to
		// manage certificate lifecycle.
		validity_period_days?: number
	})
}
