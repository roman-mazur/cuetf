package data

#cloudflare_account_api_token_permission_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account_api_token_permission_groups")
	close({
		account_id!: string
		name?:       string
		scope?:      string
	})
}
