package data

#cloudflare_account_api_token_permission_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_account_api_token_permission_groups")
	close({
		// Account identifier tag.
		account_id!: string

		// Filter by the name of the permission group.
		// The value must be URL-encoded.
		name?: string

		// Filter by the scope of the permission group.
		// The value must be URL-encoded.
		scope?: string
	})
}
