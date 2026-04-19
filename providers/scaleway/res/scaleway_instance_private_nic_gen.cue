package res

#scaleway_instance_private_nic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_instance_private_nic")
	close({
		private_ips?: matchN(1, [#private_ips, [...#private_ips]])
		timeouts?: #timeouts
		id?:       string

		// IPAM ip list, should be for internal use only
		ip_ids?: [...string]

		// IPAM IDs of a pre-reserved IP addresses to assign to the
		// Instance in the requested private network
		ipam_ip_ids?: [...string]

		// MAC address of the NIC
		mac_address?: string

		// The private network ID
		private_network_id!: string

		// The server ID
		server_id!: string

		// The tags associated with the private-nic
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})

	#private_ips: close({
		// The private IP address
		address?: string

		// The ID of the IP address resource
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
