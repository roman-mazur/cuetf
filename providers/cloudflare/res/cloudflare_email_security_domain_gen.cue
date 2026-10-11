package res

cloudflare_email_security_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_email_security_domain")
	close({
		// Identifier.
		account_id!: string

		// Delivery modes to onboard the domain through.
		allowed_delivery_modes!: [...string]
		authorization?: close({
			authorized?:     bool
			status_message?: string
			timestamp?:      string
		})
		created_at?: string

		// Available values: "none", "good", "invalid".
		dmarc_status?: string

		// The email domain to protect.
		domain!: string

		// Dispositions to drop instead of delivering, e.g. `["MALICIOUS", "SPAM"]`.
		drop_dispositions!: [...string]
		emails_processed?: close({
			timestamp?:                       string
			total_emails_processed?:          number
			total_emails_processed_previous?: number
		})

		// The mailbox folder to scan, for API-scanning domains.
		// Available values: "AllItems", "Inbox".
		folder?: string

		// Domain identifier.
		id?: string

		// Available values: "Microsoft", "Google".
		inbox_provider?: string

		// Identifier of the CASB integration that authorizes this domain. The
		// integration also enables API scanning, post-delivery actions, and directory
		// sync.
		integration_id?: string

		// Source IP ranges mail is accepted from. Any other source is rejected.
		ip_restrictions!: [...string]

		// Number of hops to trace back through received headers when reconstructing the
		// original message (1-20).
		lookback_hops?:  number
		modified_at?:    string
		o365_tenant_id?: string

		// Regions that process messages for this domain, e.g. `["GLOBAL"]` or `["US"]`.
		regions!: [...string]

		// Require TLS on inbound connections.
		require_tls_inbound?: bool

		// Require TLS on outbound connections.
		require_tls_outbound?: bool

		// Available values: "none", "good", "neutral", "open", "invalid".
		spf_status?: string

		// Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
		status?: string

		// The mail transport hostname for MX/Inline delivery — the MX record Cloudflare
		// delivers email to (e.g. `mx.example.com`).
		transport?: string
	})
}
