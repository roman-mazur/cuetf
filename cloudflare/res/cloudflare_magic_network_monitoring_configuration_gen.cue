package res

#cloudflare_magic_network_monitoring_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_magic_network_monitoring_configuration")
	close({
		// Fallback sampling rate of flow messages being sent in packets
		// per second. This should match the packet sampling rate
		// configured on the router.
		default_sampling?: number
		warp_devices?: matchN(1, [close({
			// Unique identifier for the warp device.
			id!: string

			// Name of the warp device.
			name!: string

			// IPv4 CIDR of the router sourcing flow data associated with this
			// warp device. Only /32 addresses are currently supported.
			router_ip!: string
		}), [...close({
			// Unique identifier for the warp device.
			id!: string

			// Name of the warp device.
			name!: string

			// IPv4 CIDR of the router sourcing flow data associated with this
			// warp device. Only /32 addresses are currently supported.
			router_ip!: string
		})]])
		account_id!: string

		// The account name.
		name!: string
		router_ips?: [...string]
	})
}
