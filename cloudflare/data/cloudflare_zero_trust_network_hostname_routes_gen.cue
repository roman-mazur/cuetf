package data

#cloudflare_zero_trust_network_hostname_routes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_network_hostname_routes")
	close({
		// Cloudflare account ID
		account_id!: string

		// If set, only list hostname routes with the given comment.
		comment?: string

		// If provided, include only resources that were created (and not
		// deleted) before this time. URL encoded.
		existed_at?: string

		// If set, only list hostname routes that contain a substring of
		// the given value, the filter is case-insensitive.
		hostname?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// An optional description of the hostname route.
			comment?: string

			// Timestamp of when the resource was created.
			created_at?: string

			// Timestamp of when the resource was deleted. If `null`, the
			// resource has not been deleted.
			deleted_at?: string

			// The hostname of the route.
			hostname?: string

			// The hostname route ID.
			id?: string

			// UUID of the tunnel.
			tunnel_id?: string

			// A user-friendly name for a tunnel.
			tunnel_name?: string
		}), [...close({
			// An optional description of the hostname route.
			comment?: string

			// Timestamp of when the resource was created.
			created_at?: string

			// Timestamp of when the resource was deleted. If `null`, the
			// resource has not been deleted.
			deleted_at?: string

			// The hostname of the route.
			hostname?: string

			// The hostname route ID.
			id?: string

			// UUID of the tunnel.
			tunnel_id?: string

			// A user-friendly name for a tunnel.
			tunnel_name?: string
		})]])

		// The hostname route ID.
		id?: string

		// If `true`, only return deleted hostname routes. If `false`,
		// exclude deleted hostname routes.
		is_deleted?: bool

		// Max items to fetch, default: 1000
		max_items?: number

		// If set, only list hostname routes that point to a specific
		// tunnel.
		tunnel_id?: string
	})
}
