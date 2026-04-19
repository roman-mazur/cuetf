package res

#scaleway_vpc_gateway_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_vpc_gateway_network")
	close({
		ipam_config?: matchN(1, [#ipam_config, [...#ipam_config]])
		private_ip?: matchN(1, [#private_ip, [...#private_ip]])
		timeouts?: #timeouts

		// The date and time of the creation of the gateway network
		created_at?: string

		// Enable masquerade on this network
		enable_masquerade?: bool

		// The ID of the public gateway where connect to
		gateway_id!: string
		id?:         string

		// The mac address on this network
		mac_address?: string

		// The ID of the private network where connect to
		private_network_id!: string

		// The status of the Public Gateway's connection to the Private
		// Network
		status?: string

		// The date and time of the last update of the gateway network
		updated_at?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#ipam_config: close({
		// Use this IPAM-booked IP ID as the Gateway's IP in this Private
		// Network
		ipam_ip_id?: string

		// Defines whether the default route is enabled on that Gateway
		// Network
		push_default_route?: bool
	})

	#private_ip: close({
		// The private IPv4 address.
		address?: string

		// The ID of the IPv4 address resource.
		id?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
