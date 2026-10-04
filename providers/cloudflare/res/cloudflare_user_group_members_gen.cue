package res

cloudflare_user_group_members: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_user_group_members")
	close({
		// Account identifier tag.
		account_id!: string

		// The sort order of returned user group members by email.
		// Available values: "asc", "desc".
		direction?: string

		// A string used for filtering members by partial email match.
		fuzzy_email?: string

		// User Group identifier tag.
		id?: string
		members!: matchN(1, [close({
			// The identifier of an existing account Member.
			id!: string
		}), [...close({
			// The identifier of an existing account Member.
			id!: string
		})]])

		// Page number of paginated results.
		page?: number

		// Maximum number of results per page.
		per_page?: number

		// User Group identifier tag.
		user_group_id!: string
	})
}
