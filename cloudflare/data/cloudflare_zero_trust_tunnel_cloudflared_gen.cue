package data

#cloudflare_zero_trust_tunnel_cloudflared: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_cloudflared")
	close({
		// Cloudflare account ID
		account_id!: string

		// Cloudflare account ID
		account_tag?: string

		// Timestamp of when the tunnel established at least one
		// connection to Cloudflare's edge. If `null`, the tunnel is
		// inactive.
		conns_active_at?: string

		// Timestamp of when the tunnel became inactive (no connections to
		// Cloudflare's edge). If `null`, the tunnel is active.
		conns_inactive_at?: string

		// Timestamp of when the resource was created.
		created_at?: string

		// Timestamp of when the resource was deleted. If `null`, the
		// resource has not been deleted.
		deleted_at?: string

		// UUID of the tunnel.
		id?: string

		// Metadata associated with the tunnel.
		metadata?: string
		filter?: close({
			exclude_prefix?: string

			// If provided, include only resources that were created (and not
			// deleted) before this time. URL encoded.
			existed_at?:     string
			include_prefix?: string

			// If `true`, only include deleted tunnels. If `false`, exclude
			// deleted tunnels. If empty, all tunnels will be included.
			is_deleted?: bool

			// A user-friendly name for a tunnel.
			name?: string

			// The status of the tunnel. Valid values are `inactive` (tunnel
			// has never been run), `degraded` (tunnel is active and able to
			// serve traffic but in an unhealthy state), `healthy` (tunnel is
			// active and able to serve traffic), or `down` (tunnel can not
			// serve traffic as it has no connections to the Cloudflare
			// Edge).
			// Available values: "inactive", "degraded", "healthy", "down".
			status?: string

			// UUID of the tunnel.
			uuid?:            string
			was_active_at?:   string
			was_inactive_at?: string
		})

		// A user-friendly name for a tunnel.
		name?: string

		// If `true`, the tunnel can be configured remotely from the Zero
		// Trust dashboard. If `false`, the tunnel must be configured
		// locally on the origin machine.
		remote_config?: bool

		// The status of the tunnel. Valid values are `inactive` (tunnel
		// has never been run), `degraded` (tunnel is active and able to
		// serve traffic but in an unhealthy state), `healthy` (tunnel is
		// active and able to serve traffic), or `down` (tunnel can not
		// serve traffic as it has no connections to the Cloudflare
		// Edge).
		// Available values: "inactive", "degraded", "healthy", "down".
		status?: string

		// The type of tunnel.
		// Available values: "cfd_tunnel", "warp_connector", "warp",
		// "magic", "ip_sec", "gre", "cni".
		tun_type?: string

		// UUID of the tunnel.
		tunnel_id?: string
	})
}
