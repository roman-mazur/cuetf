package data

cloudflare_email_security_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_security_domain")
	close({
		// Identifier.
		account_id!: string
		allowed_delivery_modes?: [...string]
		authorization?: close({
			authorized?:     bool
			status_message?: string
			timestamp?:      string
		})
		created_at?: string

		// Available values: "none", "good", "invalid".
		dmarc_status?: string
		domain?:       string

		// Domain identifier.
		domain_id?: string
		drop_dispositions?: [...string]
		emails_processed?: close({
			timestamp?:                       string
			total_emails_processed?:          number
			total_emails_processed_previous?: number
		})
		filter?: close({
			// Currently active delivery mode to filter by.
			// Available values: "DIRECT", "BCC", "JOURNAL", "API", "RETRO_SCAN".
			active_delivery_mode?: string

			// Delivery mode to filter by.
			// Available values: "DIRECT", "BCC", "JOURNAL", "API", "RETRO_SCAN".
			allowed_delivery_mode?: string

			// The sorting direction.
			// Available values: "asc", "desc".
			direction?: string

			// Domain names to filter by.
			domain?: [...string]

			// Integration ID to filter by.
			integration_id?: string

			// Field to sort by.
			// Available values: "domain", "created_at".
			order?: string

			// Search term for filtering records. Behavior may change.
			search?: string

			// Filters response to domains with the provided status.
			// Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
			status?: string
		})

		// Available values: "AllItems", "Inbox".
		folder?: string

		// Domain identifier.
		id?: string

		// Available values: "Microsoft", "Google".
		inbox_provider?: string
		integration_id?: string
		ip_restrictions?: [...string]
		lookback_hops?:  number
		modified_at?:    string
		o365_tenant_id?: string
		regions?: [...string]
		require_tls_inbound?:  bool
		require_tls_outbound?: bool

		// Available values: "none", "good", "neutral", "open", "invalid".
		spf_status?: string

		// Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
		status?:    string
		transport?: string
	})
}
