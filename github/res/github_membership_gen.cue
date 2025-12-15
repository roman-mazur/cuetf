package res

#github_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_membership")
	close({
		// Instead of removing the member from the org, you can choose to
		// downgrade their membership to 'member' when this resource is
		// destroyed. This is useful when wanting to downgrade admins
		// while keeping them in the organization
		downgrade_on_destroy?: bool
		etag?:                 string

		// The role of the user within the organization. Must be one of
		// 'member' or 'admin'.
		role?: string
		id?:   string

		// The user to add to the organization.
		username!: string
	})
}
