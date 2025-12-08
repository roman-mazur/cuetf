package data

#cloudflare_sso_connectors: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_sso_connectors")
	close({
		// Account identifier tag.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Timestamp for the creation of the SSO connector
			created_on?:   string
			email_domain?: string
			verification?: close({
				// DNS verification code. Add this entire string to the DNS TXT
				// record of the email domain to validate ownership.
				code?: string

				// The status of the verification code from the verification
				// process.
				// Available values: "awaiting", "pending", "failed", "verified".
				status?: string
			})
			enabled?: bool

			// SSO Connector identifier tag.
			id?: string

			// Timestamp for the last update of the SSO connector
			updated_on?: string

			// Controls the display of FedRAMP language to the user during SSO
			// login
			use_fedramp_language?: bool
		}), [...close({
			// Timestamp for the creation of the SSO connector
			created_on?:   string
			email_domain?: string
			verification?: close({
				// DNS verification code. Add this entire string to the DNS TXT
				// record of the email domain to validate ownership.
				code?: string

				// The status of the verification code from the verification
				// process.
				// Available values: "awaiting", "pending", "failed", "verified".
				status?: string
			})
			enabled?: bool

			// SSO Connector identifier tag.
			id?: string

			// Timestamp for the last update of the SSO connector
			updated_on?: string

			// Controls the display of FedRAMP language to the user during SSO
			// login
			use_fedramp_language?: bool
		})]])
	})
}
