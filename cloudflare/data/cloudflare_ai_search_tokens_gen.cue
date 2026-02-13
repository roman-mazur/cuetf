package data

#cloudflare_ai_search_tokens: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_ai_search_tokens")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			account_id?:  string
			account_tag?: string
			cf_api_id?:   string
			cf_api_key?:  string
			created_at?:  string
			created_by?:  string
			enabled?:     bool
			id?:          string
			legacy?:      bool
			modified_at?: string
			modified_by?: string
			name?:        string
			synced_at?:   string
		}), [...close({
			account_id?:  string
			account_tag?: string
			cf_api_id?:   string
			cf_api_key?:  string
			created_at?:  string
			created_by?:  string
			enabled?:     bool
			id?:          string
			legacy?:      bool
			modified_at?: string
			modified_by?: string
			name?:        string
			synced_at?:   string
		})]])
	})
}
