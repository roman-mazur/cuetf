package data

cloudflare_account_permission_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_account_permission_group")
	close({
		// Account identifier tag.
		account_id!: string

		// Identifier of the permission group.
		id?: string

		// Attributes associated to the permission group.
		meta?: close({
			// A category used to group permission groups.
			category?: string

			// Indicates whether the permission group is deprecated.
			deprecated?: string

			// Additional information about the permission group.
			description?: string

			// Indicates whether the permission group can be edited.
			editable?: string

			// The planned end-of-life date and time, when provided.
			eol_at?: string

			// A label identifying the permission group.
			label?: string

			// The scope associated with the permission group.
			scopes?: string

			// Indicates the permission group's availability or visibility.
			visibility?: string
		})

		// Name of the permission group.
		name?: string

		// Permission Group identifier tag.
		permission_group_id!: string
	})
}
