package data

#cloudflare_rulesets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_rulesets")
	close({
		account_id?: string
		max_items?:  number
		result?: matchN(1, [close({
			description?: string
			id?:          string
			kind?:        string
			name?:        string
			phase?:       string
		}), [...close({
			description?: string
			id?:          string
			kind?:        string
			name?:        string
			phase?:       string
		})]])
		zone_id?: string
	})
}
