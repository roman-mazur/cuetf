package data

#cloudflare_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account")
	close({
		// Account identifier tag.
		account_id?: string

		// Timestamp for the creation of the account
		created_on?: string
		filter?: close({
			// Direction to order results.
			// Available values: "asc", "desc".
			direction?: string

			// Name of the account.
			name?: string
		})

		// Account identifier tag.
		id?: string

		// Account settings
		settings?: close({
			// Sets an abuse contact email to notify for abuse reports.
			abuse_contact_email?: string

			// Indicates whether membership in this account requires that
			// Two-Factor Authentication is enabled
			enforce_twofactor?: bool
		})

		// Account name
		name?: string
	})
}
