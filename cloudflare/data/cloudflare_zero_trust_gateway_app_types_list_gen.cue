package data

#cloudflare_zero_trust_gateway_app_types_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_app_types_list")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			application_type_id?: number
			created_at?:          string
			description?:         string
			id?:                  number
			name?:                string
		}), [...close({
			application_type_id?: number
			created_at?:          string
			description?:         string
			id?:                  number
			name?:                string
		})]])
	})
}
