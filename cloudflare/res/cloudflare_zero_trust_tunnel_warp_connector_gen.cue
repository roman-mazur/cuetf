package res

#cloudflare_zero_trust_tunnel_warp_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_warp_connector")
	close({
		account_id!:        string
		account_tag?:       string
		conns_active_at?:   string
		conns_inactive_at?: string
		created_at?:        string
		deleted_at?:        string
		id?:                string
		metadata?:          string
		name!:              string
		remote_config?:     bool
		status?:            string
		tun_type?:          string
		tunnel_secret?:     string
	})
}
