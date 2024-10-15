package data

#cloudflare_zero_trust_tunnel_cloudflared: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_cloudflared")
	account_id!:    string
	id?:            string
	is_deleted?:    bool
	name!:          string
	remote_config?: bool
	status?:        string
	tunnel_type?:   string
}
