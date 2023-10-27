package res

#cloudflare_tunnel_virtual_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_tunnel_virtual_network")
	account_id:          string
	comment?:            string
	id?:                 string
	is_default_network?: bool
	name:                string
}
