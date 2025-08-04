package data

#cloudflare_zero_trust_tunnel_cloudflared_virtual_networks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_cloudflared_virtual_networks")
	close({
		account_id!: string
		result?: matchN(1, [close({
			comment?:            string
			created_at?:         string
			deleted_at?:         string
			id?:                 string
			is_default_network?: bool
			name?:               string
		}), [...close({
			comment?:            string
			created_at?:         string
			deleted_at?:         string
			id?:                 string
			is_default_network?: bool
			name?:               string
		})]])
		id?:         string
		is_default?: bool
		is_deleted?: bool
		max_items?:  number
		name?:       string
	})
}
