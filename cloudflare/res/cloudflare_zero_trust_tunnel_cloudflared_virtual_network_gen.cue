package res

#cloudflare_zero_trust_tunnel_cloudflared_virtual_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_cloudflared_virtual_network")
	close({
		account_id!:         string
		comment?:            string
		created_at?:         string
		deleted_at?:         string
		id?:                 string
		is_default_network?: bool
		name!:               string
	})
}
