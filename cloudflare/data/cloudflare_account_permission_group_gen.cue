package data

#cloudflare_account_permission_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account_permission_group")
	close({
		// Account identifier tag.
		account_id!: string

		// Identifier of the permission group.
		id?: string

		// Attributes associated to the permission group.
		meta?: close({
			key?:   string
			value?: string
		})

		// Name of the permission group.
		name?: string

		// Permission Group identifier tag.
		permission_group_id!: string
	})
}
