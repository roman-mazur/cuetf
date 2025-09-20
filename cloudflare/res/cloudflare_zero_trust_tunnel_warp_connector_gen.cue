package res

#cloudflare_zero_trust_tunnel_warp_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_warp_connector")
	close({
		// Cloudflare account ID
		account_id!: string

		// Cloudflare account ID
		account_tag?: string

		// Indicates if this is a locally or remotely configured tunnel.
		// If `local`, manage the tunnel using a YAML file on the origin
		// machine. If `cloudflare`, manage the tunnel on the Zero Trust
		// dashboard.
		// Available values: "local", "cloudflare".
		config_src?: string

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

		// A user-friendly name for a tunnel.
		name!: string

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

		// Sets the password required to run a locally-managed tunnel.
		// Must be at least 32 bytes and encoded as a base64 string.
		tunnel_secret?: string
	})
}
