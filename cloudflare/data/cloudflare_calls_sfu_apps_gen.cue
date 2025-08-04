package data

#cloudflare_calls_sfu_apps: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_calls_sfu_apps")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			created?:  string
			modified?: string
			name?:     string
			uid?:      string
		}), [...close({
			created?:  string
			modified?: string
			name?:     string
			uid?:      string
		})]])
	})
}
