package data

#cloudflare_zero_trust_tunnel_cloudflared_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_tunnel_cloudflared_route")
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
		network?: string
		filter?: close({
			// Optional remark describing the route.
			comment?: string

			// If provided, include only resources that were created (and not
			// deleted) before this time. URL encoded.
			existed_at?: string

			// If `true`, only include deleted routes. If `false`, exclude
			// deleted routes. If empty, all routes will be included.
			is_deleted?: bool

			// If set, only list routes that are contained within this IP
			// range.
			network_subset?: string

			// If set, only list routes that contain this IP range.
			network_superset?: string

			// The types of tunnels to filter by, separated by commas.
			tun_types?: [...string]

			// UUID of the tunnel.
			tunnel_id?: string

			// UUID of the virtual network.
			virtual_network_id?: string
		})

		// UUID of the route.
		route_id?: string

		// UUID of the tunnel.
		tunnel_id?: string

		// UUID of the virtual network.
		virtual_network_id?: string
	})
}
