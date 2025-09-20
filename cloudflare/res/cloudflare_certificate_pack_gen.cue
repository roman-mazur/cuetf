package res

#cloudflare_certificate_pack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_certificate_pack")
	close({
		// Certificate Authority selected for the order. For information
		// on any certificate authority specific details or restrictions
		// [see this page for more
		// details.](https://developers.cloudflare.com/ssl/reference/certificate-authorities)
		// Available values: "google", "lets_encrypt", "ssl_com".
		certificate_authority!: string

		// Domain validation errors that have been received by the
		// certificate authority (CA).
		validation_errors?: matchN(1, [close({
			// A domain validation error.
			message?: string
		}), [...close({
			// A domain validation error.
			message?: string
		})]])

		// Whether or not to add Cloudflare Branding for the order. This
		// will add a subdomain of sni.cloudflaressl.com as the Common
		// Name if set to true.
		cloudflare_branding?: bool

		// Comma separated list of valid host names for the certificate
		// packs. Must contain the zone apex, may not contain more than
		// 50 hosts, and may not be empty.
		hosts!: [...string]

		// Identifier.
		id?: string

		// Certificates' validation records. Only present when certificate
		// pack is in "pending_validation" status
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

		// Status of certificate pack.
		// Available values: "initializing", "pending_validation",
		// "deleted", "pending_issuance", "pending_deployment",
		// "pending_deletion", "pending_expiration", "expired", "active",
		// "initializing_timed_out", "validation_timed_out",
		// "issuance_timed_out", "deployment_timed_out",
		// "deletion_timed_out", "pending_cleanup", "staging_deployment",
		// "staging_active", "deactivating", "inactive", "backup_issued",
		// "holding_deployment".
		status?: string

		// Type of certificate pack.
		// Available values: "advanced".
		type!: string

		// Validation Method selected for the order.
		// Available values: "txt", "http", "email".
		validation_method!: string

		// Validity Days selected for the order.
		// Available values: 14, 30, 90, 365.
		validity_days!: number

		// Identifier.
		zone_id!: string
	})
}
