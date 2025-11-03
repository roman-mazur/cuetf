package data

#cloudflare_accounts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_accounts")
	close({
		// Direction to order results.
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Timestamp for the creation of the account
			created_on?: string

			// Identifier
			id?: string

			// Parent container details
			managed_by?: close({
				// ID of the parent Organization, if one exists
				parent_org_id?: string

				// Name of the parent Organization, if one exists
				parent_org_name?: string
			})

			// Account name
			name?: string

			// Account settings
			settings?: close({
				// Sets an abuse contact email to notify for abuse reports.
				abuse_contact_email?: string

				// Indicates whether membership in this account requires that
				// Two-Factor Authentication is enabled
				enforce_twofactor?: bool
			})

			// Available values: "standard", "enterprise".
			type?: string
		}), [...close({
			// Timestamp for the creation of the account
			created_on?: string

			// Identifier
			id?: string

			// Parent container details
			managed_by?: close({
				// ID of the parent Organization, if one exists
				parent_org_id?: string

				// Name of the parent Organization, if one exists
				parent_org_name?: string
			})

			// Account name
			name?: string

			// Account settings
			settings?: close({
				// Sets an abuse contact email to notify for abuse reports.
				abuse_contact_email?: string

				// Indicates whether membership in this account requires that
				// Two-Factor Authentication is enabled
				enforce_twofactor?: bool
			})

			// Available values: "standard", "enterprise".
			type?: string
		})]])

		// Name of the account.
		name?: string
	})
}
