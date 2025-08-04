package data

#cloudflare_api_token_permission_groups_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_token_permission_groups_list")
	close({
		max_items?: number
		name?:      string
		result?: matchN(1, [close({
			id?:   string
			name?: string
			scopes?: [...string]
		}), [...close({
			id?:   string
			name?: string
			scopes?: [...string]
		})]])
		scope?: string
	})
}
