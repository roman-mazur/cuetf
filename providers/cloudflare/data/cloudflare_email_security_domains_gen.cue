package data

cloudflare_email_security_domains: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_security_domains")
	close({
		// Identifier.
		account_id!: string

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

		// Max items to fetch, default: 1000
		max_items?: number

		// Field to sort by.
		// Available values: "domain", "created_at".
		order?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			allowed_delivery_modes?: [...string]
			authorization?: close({
				authorized?:     bool
				status_message?: string
				timestamp?:      string
			})

			// Available values: "none", "good", "invalid".
			dmarc_status?: string
			created_at?:   string
			emails_processed?: close({
				timestamp?:                       string
				total_emails_processed?:          number
				total_emails_processed_previous?: number
			})

			// Available values: "AllItems", "Inbox".
			folder?: string

			// Domain identifier.
			id?:     string
			domain?: string

			// Available values: "Microsoft", "Google".
			inbox_provider?: string
			drop_dispositions?: [...string]

			// Available values: "none", "good", "neutral", "open", "invalid".
			spf_status?: string

			// Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
			status?:         string
			integration_id?: string
			ip_restrictions?: [...string]
			lookback_hops?:  number
			modified_at?:    string
			o365_tenant_id?: string
			regions?: [...string]
			require_tls_inbound?:  bool
			require_tls_outbound?: bool
			transport?:            string
		}), [...close({
			allowed_delivery_modes?: [...string]
			authorization?: close({
				authorized?:     bool
				status_message?: string
				timestamp?:      string
			})

			// Available values: "none", "good", "invalid".
			dmarc_status?: string
			created_at?:   string
			emails_processed?: close({
				timestamp?:                       string
				total_emails_processed?:          number
				total_emails_processed_previous?: number
			})

			// Available values: "AllItems", "Inbox".
			folder?: string

			// Domain identifier.
			id?:     string
			domain?: string

			// Available values: "Microsoft", "Google".
			inbox_provider?: string
			drop_dispositions?: [...string]

			// Available values: "none", "good", "neutral", "open", "invalid".
			spf_status?: string

			// Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
			status?:         string
			integration_id?: string
			ip_restrictions?: [...string]
			lookback_hops?:  number
			modified_at?:    string
			o365_tenant_id?: string
			regions?: [...string]
			require_tls_inbound?:  bool
			require_tls_outbound?: bool
			transport?:            string
		})]])

		// Search term for filtering records. Behavior may change.
		search?: string

		// Filters response to domains with the provided status.
		// Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
		status?: string
	})
}
