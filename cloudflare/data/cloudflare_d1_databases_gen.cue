package data

#cloudflare_d1_databases: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_d1_databases")
	close({
		account_id!: string
		max_items?:  number
		name?:       string
		result?: matchN(1, [close({
			created_at?: string
			name?:       string
			uuid?:       string
			version?:    string
		}), [...close({
			created_at?: string
			name?:       string
			uuid?:       string
			version?:    string
		})]])
	})
}
