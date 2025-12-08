package res

#cloudflare_sso_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_sso_connector")
	close({
		// Account identifier tag.
		account_id!: string
		verification?: close({
			// DNS verification code. Add this entire string to the DNS TXT
			// record of the email domain to validate ownership.
			code?: string

			// The status of the verification code from the verification
			// process.
			// Available values: "awaiting", "pending", "failed", "verified".
			status?: string
		})

		// Begin the verification process after creation
		begin_verification?: bool

		// Timestamp for the creation of the SSO connector
		created_on?: string

		// Email domain of the new SSO connector
		email_domain!: string

		// SSO Connector enabled state
		enabled?: bool

		// SSO Connector identifier tag.
		id?: string

		// Timestamp for the last update of the SSO connector
		updated_on?: string

		// Controls the display of FedRAMP language to the user during SSO
		// login
		use_fedramp_language?: bool
	})
}
