package res

#github_enterprise_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_enterprise_organization")
	close({
		// List of organization owner usernames.
		admin_logins!: [...string]

		// The billing email address.
		billing_email!: string

		// The database ID of the organization.
		database_id?: number

		// The description of the organization.
		description?: string

		// The display name of the organization.
		display_name?: string

		// The ID of the enterprise.
		enterprise_id!: string

		// The node ID of the organization.
		id?: string

		// The name of the organization.
		name!: string
	})
}
