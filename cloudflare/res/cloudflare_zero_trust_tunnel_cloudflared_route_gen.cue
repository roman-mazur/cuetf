package res

#cloudflare_zero_trust_tunnel_cloudflared_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_cloudflared_route")
	close({
		// Cloudflare account ID
		account_id!: string

		// Optional remark describing the route.
		comment?: string

		// Timestamp of when the resource was created.
		created_at?: string

		// Timestamp of when the resource was deleted. If `null`, the
		// resource has not been deleted.
		deleted_at?: string

		// UUID of the route.
		id?: string

		// The private IPv4 or IPv6 range connected by the route, in CIDR
		// notation.
		network!: string

		// UUID of the tunnel.
		tunnel_id!: string

		// UUID of the virtual network.
		virtual_network_id?: string
	})
}
