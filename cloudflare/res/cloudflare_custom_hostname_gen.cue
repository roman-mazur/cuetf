package res

#cloudflare_custom_hostname: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_custom_hostname")
	close({
		// This is the time the hostname was created.
		created_at?: string

		// This is a record which can be placed to activate a hostname.
		ownership_verification?: close({
			// DNS Name for record.
			name?: string

			// DNS Record type.
			// Available values: "txt".
			type?: string

			// Content for the record.
			value?: string
		})

		// Unique key/value metadata for this hostname. These are
		// per-hostname (customer) settings.
		custom_metadata?: [string]: string

		// a valid hostname that’s been added to your DNS zone as an A,
		// AAAA, or CNAME record.
		custom_origin_server?: string

		// A hostname that will be sent to your custom origin server as
		// SNI for TLS handshake. This can be a valid subdomain of the
		// zone or custom origin server name or the string
		// ':request_host_header:' which will cause the host header in
		// the request to be used as SNI. Not configurable with
		// default/fallback origin server.
		custom_origin_sni?: string

		// The custom hostname that will point to your hostname via CNAME.
		hostname!: string

		// This presents the token to be served by the given http url to
		// activate a hostname.
		ownership_verification_http?: close({
			// Token to be served.
			http_body?: string

			// The HTTP URL that will be checked during custom hostname
			// verification and where the customer should host the token.
			http_url?: string
		})

		// Identifier.
		id?: string

		// SSL properties used when creating the custom hostname.
		ssl!: close({
			// A ubiquitous bundle has the highest probability of being
			// verified everywhere, even by clients using outdated or unusual
			// trust stores. An optimal bundle uses the shortest chain and
			// newest intermediates. And the force bundle verifies the chain,
			// but does not otherwise modify it.
			// Available values: "ubiquitous", "optimal", "force".
			bundle_method?: string

			// The Certificate Authority that will issue the certificate
			// Available values: "digicert", "google", "lets_encrypt",
			// "ssl_com".
			certificate_authority?: string

			// Whether or not to add Cloudflare Branding for the order. This
			// will add a subdomain of sni.cloudflaressl.com as the Common
			// Name if set to true
			cloudflare_branding?: bool

			// Array of custom certificate and key pairs (1 or 2 pairs
			// allowed)
			custom_cert_bundle?: matchN(1, [close({
				// If a custom uploaded certificate is used.
				custom_certificate!: string

				// The key for a custom uploaded certificate.
				custom_key!: string
			}), [...close({
				// If a custom uploaded certificate is used.
				custom_certificate!: string

				// The key for a custom uploaded certificate.
				custom_key!: string
			})]])

			// If a custom uploaded certificate is used.
			custom_certificate?: string

			// The key for a custom uploaded certificate.
			custom_key?: string

			// Domain control validation (DCV) method used for this hostname.
			// Available values: "http", "txt", "email".
			method?: string

			// SSL specific settings.
			settings?: close({
				// An allowlist of ciphers for TLS termination. These ciphers must
				// be in the BoringSSL format.
				ciphers?: [...string]

				// Whether or not Early Hints is enabled.
				// Available values: "on", "off".
				early_hints?: string

				// Whether or not HTTP2 is enabled.
				// Available values: "on", "off".
				http2?: string

				// The minimum TLS version supported.
				// Available values: "1.0", "1.1", "1.2", "1.3".
				min_tls_version?: string

				// Whether or not TLS 1.3 is enabled.
				// Available values: "on", "off".
				tls_1_3?: string
			})

			// Level of validation to be used for this hostname. Domain
			// validation (dv) must be used.
			// Available values: "dv".
			type?: string

			// Indicates whether the certificate covers a wildcard.
			wildcard?: bool
		})

		// Status of the hostname's activation.
		// Available values: "active", "pending", "active_redeploying",
		// "moved", "pending_deletion", "deleted", "pending_blocked",
		// "pending_migration", "pending_provisioned", "test_pending",
		// "test_active", "test_active_apex", "test_blocked",
		// "test_failed", "provisioned", "blocked".
		status?: string

		// These are errors that were encountered while trying to activate
		// a hostname.
		verification_errors?: [...string]

		// Identifier.
		zone_id!: string
	})
}
