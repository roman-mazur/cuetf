package data

#cloudflare_user_group_members: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_user_group_members")
	close({
		// Account identifier tag.
		account_id!: string

		// The sort order of returned user group members by email.
		// Available values: "asc", "desc".
		direction?: string

		// The contact email address of the user.
		email?: string

		// A string used for filtering members by partial email match.
		fuzzy_email?: string

		// User Group identifier tag.
		id?: string

		// The member's status in the account.
		// Available values: "accepted", "pending".
		status?: string

		// User Group identifier tag.
		user_group_id!: string
	})
}
