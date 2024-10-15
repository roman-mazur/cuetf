package res

#cloudflare_zero_trust_tunnel_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_route")
	account_id!:         string
	comment?:            string
	id?:                 string
	network!:            string
	tunnel_id!:          string
	virtual_network_id?: string
}
