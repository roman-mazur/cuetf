package data

#scaleway_instance_private_nic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_instance_private_nic")
	close({
		id?: string

		// IPAM ip list, should be for internal use only
		ip_ids?: [...string]

		// IPAM IDs of a pre-reserved IP addresses to assign to the
		// Instance in the requested private network
		ipam_ip_ids?: [...string]

		// MAC address of the NIC
		mac_address?: string

		// List of private IPv4 and IPv6 addresses associated with the
		// resource
		private_ips?: [...close({
			address?: string
			id?:      string
		})]

		// The private network ID
		private_network_id?: string

		// The ID of the Private NIC
		private_nic_id?: string

		// The server ID
		server_id!: string

		// The tags associated with the private-nic
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})
}
