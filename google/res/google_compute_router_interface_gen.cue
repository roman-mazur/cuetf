package res

#google_compute_router_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_router_interface")
	close({
		id?: string

		// The name or resource link to the VLAN interconnect for this
		// interface. Changing this forces a new interface to be created.
		// Only one of interconnect_attachment, subnetwork or vpn_tunnel
		// can be specified.
		interconnect_attachment?: string

		// The IP address and range of the interface. The IP range must be
		// in the RFC3927 link-local IP space. Changing this forces a new
		// interface to be created.
		ip_range?: string

		// IP version of this interface.
		ip_version?: string

		// A unique name for the interface, required by GCE. Changing this
		// forces a new interface to be created.
		name!: string

		// The regional private internal IP address that is used to
		// establish BGP sessions to a VM instance acting as a
		// third-party Router Appliance. Changing this forces a new
		// interface to be created.
		private_ip_address?: string

		// The ID of the project in which this interface's router belongs.
		// If it is not provided, the provider project is used. Changing
		// this forces a new interface to be created.
		project?: string

		// The name of the interface that is redundant to this interface.
		// Changing this forces a new interface to be created.
		redundant_interface?: string

		// The region this interface's router sits in. If not specified,
		// the project region will be used. Changing this forces a new
		// interface to be created.
		region?:   string
		timeouts?: #timeouts

		// The name of the router this interface will be attached to.
		// Changing this forces a new interface to be created.
		router!: string

		// The URI of the subnetwork resource that this interface belongs
		// to, which must be in the same region as the Cloud Router.
		// Changing this forces a new interface to be created. Only one
		// of subnetwork, interconnect_attachment or vpn_tunnel can be
		// specified.
		subnetwork?: string

		// The name or resource link to the VPN tunnel this interface will
		// be linked to. Changing this forces a new interface to be
		// created. Only one of vpn_tunnel, interconnect_attachment or
		// subnetwork can be specified.
		vpn_tunnel?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
