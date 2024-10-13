package res

#cloudflare_tunnel_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_tunnel_route")
	account_id!:         string
	comment?:            string
	id?:                 string
	network!:            string
	tunnel_id!:          string
	virtual_network_id?: string
}
