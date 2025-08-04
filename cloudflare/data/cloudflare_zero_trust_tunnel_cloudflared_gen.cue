package data

#cloudflare_zero_trust_tunnel_cloudflared: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_cloudflared")
	close({
		account_id!:        string
		account_tag?:       string
		conns_active_at?:   string
		conns_inactive_at?: string
		created_at?:        string
		deleted_at?:        string
		id?:                string
		metadata?:          string
		name?:              string
		remote_config?:     bool
		filter?: close({
			exclude_prefix?:  string
			existed_at?:      string
			include_prefix?:  string
			is_deleted?:      bool
			name?:            string
			status?:          string
			uuid?:            string
			was_active_at?:   string
			was_inactive_at?: string
		})
		status?:    string
		tun_type?:  string
		tunnel_id?: string
	})
}
