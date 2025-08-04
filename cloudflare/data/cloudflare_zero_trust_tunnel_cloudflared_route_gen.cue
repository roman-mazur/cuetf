package data

#cloudflare_zero_trust_tunnel_cloudflared_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_cloudflared_route")
	close({
		account_id!: string
		comment?:    string
		created_at?: string
		deleted_at?: string
		id?:         string
		network?:    string
		filter?: close({
			comment?:          string
			existed_at?:       string
			is_deleted?:       bool
			network_subset?:   string
			network_superset?: string
			route_id?:         string
			tun_types?: [...string]
			tunnel_id?:          string
			virtual_network_id?: string
		})
		route_id?:           string
		tunnel_id?:          string
		virtual_network_id?: string
	})
}
