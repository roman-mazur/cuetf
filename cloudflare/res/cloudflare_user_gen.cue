package res

#cloudflare_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_user")
	close({
		// Lists the betas that the user is participating in.
		betas?: [...string]

		// The country in which the user lives.
		country?: string

		// User's first name
		first_name?: string

		// Indicates whether user has any business zones
		has_business_zones?: bool

		// Indicates whether user has any enterprise zones
		has_enterprise_zones?: bool

		// Indicates whether user has any pro zones
		has_pro_zones?: bool
		organizations?: matchN(1, [close({
			// Identifier
			id?: string

			// Organization name.
			name?: string

			// Access permissions for this User.
			permissions?: [...string]

			// List of roles that a user has within an organization.
			roles?: [...string]

			// Whether the user is a member of the organization or has an
			// invitation pending.
			// Available values: "member", "invited".
			status?: string
		}), [...close({
			// Identifier
			id?: string

			// Organization name.
			name?: string

			// Access permissions for this User.
			permissions?: [...string]

			// List of roles that a user has within an organization.
			roles?: [...string]

			// Whether the user is a member of the organization or has an
			// invitation pending.
			// Available values: "member", "invited".
			status?: string
		})]])

		// Identifier of the user.
		id?: string

		// User's last name
		last_name?: string

		// Indicates whether user has been suspended
		suspended?: bool

		// User's telephone number
		telephone?: string

		// Indicates whether two-factor authentication is enabled for the
		// user account. Does not apply to API authentication.
		two_factor_authentication_enabled?: bool

		// Indicates whether two-factor authentication is required by one
		// of the accounts that the user is a member of.
		two_factor_authentication_locked?: bool

		// The zipcode or postal code where the user lives.
		zipcode?: string
	})
}
