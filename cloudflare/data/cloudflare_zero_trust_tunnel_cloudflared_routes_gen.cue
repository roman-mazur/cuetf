package data

#cloudflare_zero_trust_tunnel_cloudflared_routes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_cloudflared_routes")
	close({
		account_id!:       string
		comment?:          string
		existed_at?:       string
		is_deleted?:       bool
		max_items?:        number
		network_subset?:   string
		network_superset?: string
		route_id?:         string
		result?: matchN(1, [close({
			comment?:              string
			created_at?:           string
			deleted_at?:           string
			id?:                   string
			network?:              string
			tun_type?:             string
			tunnel_id?:            string
			tunnel_name?:          string
			virtual_network_id?:   string
			virtual_network_name?: string
		}), [...close({
			comment?:              string
			created_at?:           string
			deleted_at?:           string
			id?:                   string
			network?:              string
			tun_type?:             string
			tunnel_id?:            string
			tunnel_name?:          string
			virtual_network_id?:   string
			virtual_network_name?: string
		})]])
		tun_types?: [...string]
		tunnel_id?:          string
		virtual_network_id?: string
	})
}
