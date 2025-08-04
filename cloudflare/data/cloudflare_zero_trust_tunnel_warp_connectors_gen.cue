package data

#cloudflare_zero_trust_tunnel_warp_connectors: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_warp_connectors")
	close({
		account_id!:     string
		exclude_prefix?: string
		existed_at?:     string
		include_prefix?: string
		is_deleted?:     bool
		max_items?:      number
		name?:           string
		status?:         string
		result?: matchN(1, [close({
			account_tag?:       string
			conns_active_at?:   string
			conns_inactive_at?: string
			created_at?:        string
			deleted_at?:        string
			id?:                string
			metadata?:          string
			name?:              string
			remote_config?:     bool
			status?:            string
			tun_type?:          string
		}), [...close({
			account_tag?:       string
			conns_active_at?:   string
			conns_inactive_at?: string
			created_at?:        string
			deleted_at?:        string
			id?:                string
			metadata?:          string
			name?:              string
			remote_config?:     bool
			status?:            string
			tun_type?:          string
		})]])
		uuid?:            string
		was_active_at?:   string
		was_inactive_at?: string
	})
}
