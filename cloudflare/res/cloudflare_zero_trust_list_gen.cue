package res

#cloudflare_zero_trust_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_list")
	close({
		account_id!:  string
		created_at?:  string
		description?: string
		id?:          string
		list_count?:  number
		items?: matchN(1, [close({
			description?: string
			value?:       string
		}), [...close({
			description?: string
			value?:       string
		})]])
		name!:       string
		type!:       string
		updated_at?: string
	})
}
