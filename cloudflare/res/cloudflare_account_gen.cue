package res

#cloudflare_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account")
	close({
		// Timestamp for the creation of the account
		created_on?: string

		// Identifier
		id?: string

		// Account name
		name!: string

		// Account settings
		settings?: close({
			// Sets an abuse contact email to notify for abuse reports.
			abuse_contact_email?: string

			// Indicates whether membership in this account requires that
			// Two-Factor Authentication is enabled
			enforce_twofactor?: bool
		})

		// information related to the tenant unit, and optionally, an id
		// of the unit to create the account on. see
		// https://developers.cloudflare.com/tenant/how-to/manage-accounts/
		unit?: close({
			// Tenant unit ID
			id?: string
		})

		// the type of account being created. For self-serve customers,
		// use standard. for enterprise customers, use enterprise.
		// Available values: "standard", "enterprise".
		type!: string
	})
}
