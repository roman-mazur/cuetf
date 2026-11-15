package res

cloudflare_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_account")
	close({
		// Timestamp for the creation of the account
		created_on?: string

		// Identifier
		id?: string

		// Legacy account flags.
		legacy_flags?: close({
			// Enterprise zone quota for standard and enterprise accounts. Accounts without
			// a quota have a maximum of 0.
			enterprise_zone_quota?: close({
				// Number of additional Enterprise zones available. Returns 0 if the quota is
				// not allocated or is exhausted.
				available?: number

				// Current number of Enterprise zones.
				current?: number

				// Maximum number of Enterprise zones allowed.
				maximum?: number
			})
		})

		// Parent container details
		managed_by?: close({
			// ID of the parent Organization, if one exists
			parent_org_id?: string

			// Name of the parent Organization, if one exists
			parent_org_name?: string

			// ID of the root Organization, if one exists
			root_org_id?: string

			// Indicates whether the parent Organization hierarchy should be displayed
			should_display_parent_orgs?: bool
		})

		// Account name, limited to 65 UTF-8 bytes.
		name!: string

		// Account settings
		settings?: close({
			// Sets an abuse contact email to notify for abuse reports.
			abuse_contact_email?: string

			// Indicates whether membership in this account requires that
			// Two-Factor Authentication is enabled
			enforce_twofactor?: bool
		})

		// Set to `true` and omit `unit` to create a standalone Free Account. If
		// provided, this field must be `true`.
		standalone?: bool

		// Information related to the tenant unit. Provide its ID and omit `standalone`
		// to create the Account within an Organization. See
		// https://developers.cloudflare.com/tenant/how-to/manage-accounts/.
		unit?: close({
			// Tenant unit ID
			id?: string
		})
	})
}
