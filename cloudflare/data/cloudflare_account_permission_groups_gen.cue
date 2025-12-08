package data

#cloudflare_account_permission_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_account_permission_groups")
	close({
		// Account identifier tag.
		account_id!: string

		// ID of the permission group to be fetched.
		id?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Attributes associated to the permission group.
			meta?: close({
				key?:   string
				value?: string
			})

			// Identifier of the permission group.
			id?: string

			// Name of the permission group.
			name?: string
		}), [...close({
			// Attributes associated to the permission group.
			meta?: close({
				key?:   string
				value?: string
			})

			// Identifier of the permission group.
			id?: string

			// Name of the permission group.
			name?: string
		})]])

		// Label of the permission group to be fetched.
		label?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Name of the permission group to be fetched.
		name?: string
	})
}
