package res

#cloudflare_zero_trust_network_hostname_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_network_hostname_route")
	close({
		// Cloudflare account ID
		account_id!: string

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
	})
}
