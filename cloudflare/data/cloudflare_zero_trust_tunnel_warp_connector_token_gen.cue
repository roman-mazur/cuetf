package data

#cloudflare_zero_trust_tunnel_warp_connector_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_warp_connector_token")
	close({
		// Cloudflare account ID
		account_id!: string

		// The Warp Connector Token is used as a mechanism to authenticate
		// the operation of a tunnel.
		token?: string

		// UUID of the tunnel.
		tunnel_id!: string
	})
}
