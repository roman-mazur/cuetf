package res

cloudflare_zero_trust_tunnel_warp_connector_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_tunnel_warp_connector_config")
	close({
		// Identifier.
		account_id!: string

		// Provider-specific configuration. Required shape depends on ha_mode. For
		// `aws`, must contain `fnr_id`. For `local`, must contain `vips`. For `none`
		// and `disabled`, must be empty or omitted.
		config?: close({
			// Floating Network Resource ID — the secondary ENI that is moved between nodes on failover.
			fnr_id?: string

			// VIPs to assign on the CloudflareWARP interface.
			vips?: matchN(1, [close({
				// Virtual IP address (IPv4 or IPv6).
				address!: string
			}), [...close({
				// Virtual IP address (IPv4 or IPv6).
				address!: string
			})]])

			// VIPs to clean up on demotion or version drift.
			vips_previous?: matchN(1, [close({
				// Virtual IP address (IPv4 or IPv6).
				address!: string
			}), [...close({
				// Virtual IP address (IPv4 or IPv6).
				address!: string
			})]])
		})

		// Monotonically increasing configuration version, incremented on each PUT.
		configuration_version?: number

		// Timestamp of when the resource was created.
		created_at?: string

		// High-availability mode for the WARP Connector tunnel. `none` means HA is
		// enabled but no provider is configured yet (newly created tunnels default to
		// this). `disabled` means HA is explicitly turned off. `aws` uses AWS ENI move
		// for failover. `local` uses virtual IPs (VIPs) on the local interface.
		// Available values: "none", "disabled", "aws", "local".
		ha_mode!: string

		// UUID of the tunnel.
		id?: string

		// UUID of the tunnel.
		tunnel_id!: string

		// Timestamp of the last update. Null if never updated.
		updated_at?: string
	})
}
