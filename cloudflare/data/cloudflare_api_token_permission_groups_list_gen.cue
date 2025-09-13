package data

#cloudflare_api_token_permission_groups_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_token_permission_groups_list")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Public ID.
			id?: string

			// Permission Group Name
			name?: string

			// Resources to which the Permission Group is scoped
			scopes?: [...string]
		}), [...close({
			// Public ID.
			id?: string

			// Permission Group Name
			name?: string

			// Resources to which the Permission Group is scoped
			scopes?: [...string]
		})]])

		// Filter by the name of the permission group.
		// The value must be URL-encoded.
		name?: string

		// Filter by the scope of the permission group.
		// The value must be URL-encoded.
		scope?: string
	})
}
