package res

#cloudflare_tunnel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_tunnel")
	account_id!:   string
	cname?:        string
	config_src?:   string
	id?:           string
	name!:         string
	secret!:       string
	tunnel_token?: string
}
