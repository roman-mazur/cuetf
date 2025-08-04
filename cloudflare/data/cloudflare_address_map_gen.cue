package data

#cloudflare_address_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_address_map")
	close({
		account_id!:     string
		address_map_id?: string
		can_delete?:     bool
		ips?: matchN(1, [close({
			created_at?: string
			ip?:         string
		}), [...close({
			created_at?: string
			ip?:         string
		})]])
		memberships?: matchN(1, [close({
			can_delete?: bool
			created_at?: string
			identifier?: string
			kind?:       string
		}), [...close({
			can_delete?: bool
			created_at?: string
			identifier?: string
			kind?:       string
		})]])
		can_modify_ips?: bool
		created_at?:     string
		default_sni?:    string
		description?:    string
		enabled?:        bool
		id?:             string
		modified_at?:    string
	})
}
