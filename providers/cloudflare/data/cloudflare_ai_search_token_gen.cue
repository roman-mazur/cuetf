package data

#cloudflare_ai_search_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_ai_search_token")
	close({
		account_id?:  string
		cf_api_id?:   string
		created_at?:  string
		created_by?:  string
		enabled?:     bool
		id?:          string
		legacy?:      bool
		modified_at?: string
		modified_by?: string
		name?:        string
		filter?: close({
			// Filter tokens whose name contains this string
			// (case-insensitive).
			search?: string
		})
	})
}
