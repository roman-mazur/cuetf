package data

#cloudflare_zero_trust_tunnel_cloudflared_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_cloudflared_token")
	close({
		account_id!: string
		token?:      string
		tunnel_id!:  string
	})
}
