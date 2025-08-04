package data

#cloudflare_zero_trust_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_list")
	close({
		account_id!:  string
		created_at?:  string
		description?: string
		id?:          string
		list_count?:  number
		list_id?:     string
		filter?: close({
			type?: string
		})
		name?: string
		items?: matchN(1, [close({
			created_at?:  string
			description?: string
			value?:       string
		}), [...close({
			created_at?:  string
			description?: string
			value?:       string
		})]])
		type?:       string
		updated_at?: string
	})
}
