package res

#scaleway_lb_private_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_lb_private_network")
	close({
		// The date and time of the creation of the private network
		// connection
		created_at?: string

		// IPAM ID of a pre-reserved IP address to assign to the Load
		// Balancer on this Private Network
		ipam_ip_ids?: [...string]
		timeouts?: #timeouts
		id?:       string

		// The load-balancer ID to attach the private network to
		lb_id!: string

		// The private network ID to attach
		private_network_id!: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The status of private network connection
		status?: string

		// The date and time of the last update of the private network
		// connection
		updated_at?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		default?: string
		delete?:  string
		read?:    string
	})
}
