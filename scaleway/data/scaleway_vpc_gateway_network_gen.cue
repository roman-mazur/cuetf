package data

#scaleway_vpc_gateway_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_vpc_gateway_network")
	close({
		// Remove DHCP config on this network on destroy
		cleanup_dhcp?: bool

		// The date and time of the creation of the gateway network
		created_at?: string

		// The ID of the public gateway DHCP config
		dhcp_id?: string

		// Enable DHCP config on this network
		enable_dhcp?: bool

		// Enable masquerade on this network
		enable_masquerade?: bool

		// The ID of the public gateway where connect to
		gateway_id?: string

		// The ID of the gateway network
		gateway_network_id?: string
		id?:                 string

		// Auto-configure the Gateway Network using IPAM (IP address
		// management service)
		ipam_config?: [...close({
			ipam_ip_id?:         string
			push_default_route?: bool
		})]

		// The mac address on this network
		mac_address?: string

		// The private IPv4 address associated with the resource.
		private_ip?: [...close({
			address?: string
			id?:      string
		})]

		// The ID of the private network where connect to
		private_network_id?: string

		// The static IP address in CIDR on this network
		static_address?: string

		// The status of the Public Gateway's connection to the Private
		// Network
		status?: string

		// The date and time of the last update of the gateway network
		updated_at?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
