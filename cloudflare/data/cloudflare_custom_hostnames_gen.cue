package data

#cloudflare_custom_hostnames: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_custom_hostnames")
	close({
		// Direction to order hostnames.
		// Available values: "asc", "desc".
		direction?: string

		// Fully qualified domain name to match against. This parameter
		// cannot be used with the 'id' parameter.
		hostname?: string

		// Hostname ID to match against. This ID was generated and
		// returned during the initial custom_hostname creation. This
		// parameter cannot be used with the 'hostname' parameter.
		id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Field to order hostnames by.
		// Available values: "ssl", "ssl_status".
		order?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// This is the time the hostname was created.
			created_at?: string

			// Unique key/value metadata for this hostname. These are
			// per-hostname (customer) settings.
			custom_metadata?: [string]: string

			// a valid hostname that’s been added to your DNS zone as an A,
			// AAAA, or CNAME record.
			custom_origin_server?: string

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

			// A hostname that will be sent to your custom origin server as
			// SNI for TLS handshake. This can be a valid subdomain of the
			// zone or custom origin server name or the string
			// ':request_host_header:' which will cause the host header in
			// the request to be used as SNI. Not configurable with
			// default/fallback origin server.
			custom_origin_sni?: string

			// This presents the token to be served by the given http url to
			// activate a hostname.
			ownership_verification_http?: close({
				// Token to be served.
				http_body?: string

				// The HTTP URL that will be checked during custom hostname
				// verification and where the customer should host the token.
				http_url?: string
			})

			// The custom hostname that will point to your hostname via CNAME.
			hostname?: string
			ssl?: close({
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

				// If a custom uploaded certificate is used.
				custom_certificate?: string
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

				// Domain validation errors that have been received by the
				// certificate authority (CA).
				validation_errors?: matchN(1, [close({
					// A domain validation error.
					message?: string
				}), [...close({
					// A domain validation error.
					message?: string
				})]])

				// The identifier for the Custom CSR that was used.
				custom_csr_id?: string

				// The key for a custom uploaded certificate.
				custom_key?: string

				// The time the custom certificate expires on.
				expires_on?: string

				// A list of Hostnames on a custom uploaded certificate.
				hosts?: [...string]

				// Custom hostname SSL identifier tag.
				id?: string
				validation_records?: matchN(1, [close({
					// The set of email addresses that the certificate authority (CA)
					// will use to complete domain validation.
					emails?: [...string]

					// The content that the certificate authority (CA) will expect to
					// find at the http_url during the domain validation.
					http_body?: string

					// The url that will be checked during domain validation.
					http_url?: string

					// The hostname that the certificate authority (CA) will check for
					// a TXT record during domain validation .
					txt_name?: string

					// The TXT record that the certificate authority (CA) will check
					// during domain validation.
					txt_value?: string
				}), [...close({
					// The set of email addresses that the certificate authority (CA)
					// will use to complete domain validation.
					emails?: [...string]

					// The content that the certificate authority (CA) will expect to
					// find at the http_url during the domain validation.
					http_body?: string

					// The url that will be checked during domain validation.
					http_url?: string

					// The hostname that the certificate authority (CA) will check for
					// a TXT record during domain validation .
					txt_name?: string

					// The TXT record that the certificate authority (CA) will check
					// during domain validation.
					txt_value?: string
				})]])

				// The issuer on a custom uploaded certificate.
				issuer?: string

				// Domain control validation (DCV) method used for this hostname.
				// Available values: "http", "txt", "email".
				method?: string

				// The serial number on a custom uploaded certificate.
				serial_number?: string

				// The signature on a custom uploaded certificate.
				signature?: string

				// Status of the hostname's SSL certificates.
				// Available values: "initializing", "pending_validation",
				// "deleted", "pending_issuance", "pending_deployment",
				// "pending_deletion", "pending_expiration", "expired", "active",
				// "initializing_timed_out", "validation_timed_out",
				// "issuance_timed_out", "deployment_timed_out",
				// "deletion_timed_out", "pending_cleanup", "staging_deployment",
				// "staging_active", "deactivating", "inactive", "backup_issued",
				// "holding_deployment".
				status?: string

				// Level of validation to be used for this hostname. Domain
				// validation (dv) must be used.
				// Available values: "dv".
				type?: string

				// The time the custom certificate was uploaded.
				uploaded_on?: string

				// Indicates whether the certificate covers a wildcard.
				wildcard?: bool
			})

			// Identifier.
			id?: string

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
		}), [...close({
			// This is the time the hostname was created.
			created_at?: string

			// Unique key/value metadata for this hostname. These are
			// per-hostname (customer) settings.
			custom_metadata?: [string]: string

			// a valid hostname that’s been added to your DNS zone as an A,
			// AAAA, or CNAME record.
			custom_origin_server?: string

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

			// A hostname that will be sent to your custom origin server as
			// SNI for TLS handshake. This can be a valid subdomain of the
			// zone or custom origin server name or the string
			// ':request_host_header:' which will cause the host header in
			// the request to be used as SNI. Not configurable with
			// default/fallback origin server.
			custom_origin_sni?: string

			// This presents the token to be served by the given http url to
			// activate a hostname.
			ownership_verification_http?: close({
				// Token to be served.
				http_body?: string

				// The HTTP URL that will be checked during custom hostname
				// verification and where the customer should host the token.
				http_url?: string
			})

			// The custom hostname that will point to your hostname via CNAME.
			hostname?: string
			ssl?: close({
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

				// If a custom uploaded certificate is used.
				custom_certificate?: string
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

				// Domain validation errors that have been received by the
				// certificate authority (CA).
				validation_errors?: matchN(1, [close({
					// A domain validation error.
					message?: string
				}), [...close({
					// A domain validation error.
					message?: string
				})]])

				// The identifier for the Custom CSR that was used.
				custom_csr_id?: string

				// The key for a custom uploaded certificate.
				custom_key?: string

				// The time the custom certificate expires on.
				expires_on?: string

				// A list of Hostnames on a custom uploaded certificate.
				hosts?: [...string]

				// Custom hostname SSL identifier tag.
				id?: string
				validation_records?: matchN(1, [close({
					// The set of email addresses that the certificate authority (CA)
					// will use to complete domain validation.
					emails?: [...string]

					// The content that the certificate authority (CA) will expect to
					// find at the http_url during the domain validation.
					http_body?: string

					// The url that will be checked during domain validation.
					http_url?: string

					// The hostname that the certificate authority (CA) will check for
					// a TXT record during domain validation .
					txt_name?: string

					// The TXT record that the certificate authority (CA) will check
					// during domain validation.
					txt_value?: string
				}), [...close({
					// The set of email addresses that the certificate authority (CA)
					// will use to complete domain validation.
					emails?: [...string]

					// The content that the certificate authority (CA) will expect to
					// find at the http_url during the domain validation.
					http_body?: string

					// The url that will be checked during domain validation.
					http_url?: string

					// The hostname that the certificate authority (CA) will check for
					// a TXT record during domain validation .
					txt_name?: string

					// The TXT record that the certificate authority (CA) will check
					// during domain validation.
					txt_value?: string
				})]])

				// The issuer on a custom uploaded certificate.
				issuer?: string

				// Domain control validation (DCV) method used for this hostname.
				// Available values: "http", "txt", "email".
				method?: string

				// The serial number on a custom uploaded certificate.
				serial_number?: string

				// The signature on a custom uploaded certificate.
				signature?: string

				// Status of the hostname's SSL certificates.
				// Available values: "initializing", "pending_validation",
				// "deleted", "pending_issuance", "pending_deployment",
				// "pending_deletion", "pending_expiration", "expired", "active",
				// "initializing_timed_out", "validation_timed_out",
				// "issuance_timed_out", "deployment_timed_out",
				// "deletion_timed_out", "pending_cleanup", "staging_deployment",
				// "staging_active", "deactivating", "inactive", "backup_issued",
				// "holding_deployment".
				status?: string

				// Level of validation to be used for this hostname. Domain
				// validation (dv) must be used.
				// Available values: "dv".
				type?: string

				// The time the custom certificate was uploaded.
				uploaded_on?: string

				// Indicates whether the certificate covers a wildcard.
				wildcard?: bool
			})

			// Identifier.
			id?: string

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
		})]])

		// Whether to filter hostnames based on if they have SSL enabled.
		// Available values: 0, 1.
		ssl?: number

		// Identifier.
		zone_id!: string
	})
}
