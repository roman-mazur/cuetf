package res

#cloudflare_zero_trust_tunnel_cloudflared: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_cloudflared")
	account_id!:   string
	cname?:        string
	config_src?:   string
	id?:           string
	name!:         string
	secret!:       string
	tunnel_token?: string
}
