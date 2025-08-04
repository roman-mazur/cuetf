package data

#cloudflare_address_maps: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_address_maps")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			can_delete?:     bool
			can_modify_ips?: bool
			created_at?:     string
			default_sni?:    string
			description?:    string
			enabled?:        bool
			id?:             string
			modified_at?:    string
		}), [...close({
			can_delete?:     bool
			can_modify_ips?: bool
			created_at?:     string
			default_sni?:    string
			description?:    string
			enabled?:        bool
			id?:             string
			modified_at?:    string
		})]])
	})
}
