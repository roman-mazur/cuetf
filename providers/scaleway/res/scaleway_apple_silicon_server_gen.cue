package res

#scaleway_apple_silicon_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_apple_silicon_server")
	close({
		private_ips?: matchN(1, [#private_ips, [...#private_ips]])
		private_network?: matchN(1, [#private_network, [...#private_network]])
		timeouts?: #timeouts

		// The commitment period of the server
		commitment?: string

		// The date and time of the creation of the server
		created_at?: string

		// The minimal date and time on which you can delete this server
		// due to Apple licence
		deletable_at?: string

		// Whether or not to enable VPC access
		enable_vpc?: bool
		id?:         string

		// IPv4 address of the server
		ip?: string

		// Name of the server
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The OS ID of the server
		os_id?: string

		// The password of the server
		password?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The public bandwidth of the server in bits per second
		public_bandwidth?: number

		// List of runner ids attach to the server
		runner_ids?: [...string]

		// The state of the server
		state?: string

		// Type of the server
		type!: string

		// The date and time of the last update of the server
		updated_at?: string

		// The username of the server
		username?: string

		// VNC url use to connect remotely to the desktop GUI
		vnc_url?: string

		// The VPC status of the server
		vpc_status?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#private_ips: close({
		// The private IP address
		address?: string

		// The ID of the IP address resource
		id?: string
	})

	#private_network: close({
		// The date and time of the creation of the private network
		created_at?: string

		// The private network ID
		id!: string

		// List of IPAM IP IDs to attach to the server
		ipam_ip_ids?: [...string]

		// The private network status
		status?: string

		// The date and time of the last update of the private network
		updated_at?: string

		// The VLAN ID associated to the private network
		vlan?: number
	})

	#timeouts: close({
		create?:  string
		default?: string
	})
}
