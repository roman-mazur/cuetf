package res

cloudflare_email_security_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_email_security_domain")
	close({
		// Identifier.
		account_id!: string
		allowed_delivery_modes!: [...string]
		authorization?: close({
			authorized?:     bool
			status_message?: string
			timestamp?:      string
		})
		created_at?: string

		// Available values: "none", "good", "invalid".
		dmarc_status?: string
		domain!:       string
		drop_dispositions!: [...string]
		emails_processed?: close({
			timestamp?:                       string
			total_emails_processed?:          number
			total_emails_processed_previous?: number
		})

		// Available values: "AllItems", "Inbox".
		folder?: string

		// Domain identifier.
		id?: string

		// Available values: "Microsoft", "Google".
		inbox_provider?: string
		integration_id?: string
		ip_restrictions!: [...string]
		lookback_hops?:  number
		modified_at?:    string
		o365_tenant_id?: string
		regions!: [...string]
		require_tls_inbound?:  bool
		require_tls_outbound?: bool

		// Available values: "none", "good", "neutral", "open", "invalid".
		spf_status?: string

		// Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
		status?:    string
		transport?: string
	})
}
