package res

#google_compute_network_endpoints: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_network_endpoints")
	close({
		id?: string

		// The network endpoint group these endpoints are part of.
		network_endpoint_group!: string
		project?:                string

		// Zone where the containing network endpoint group is located.
		zone?: string
		network_endpoints?: matchN(1, [#network_endpoints, [...#network_endpoints]])
		timeouts?: #timeouts
	})

	#network_endpoints: close({
		// The name for a specific VM instance that the IP address belongs
		// to.
		// This is required for network endpoints of type GCE_VM_IP_PORT.
		// The instance must be in the same zone as the network endpoint
		// group.
		instance?: string

		// IPv4 address of network endpoint. The IP address must belong
		// to a VM in GCE (either the primary IP or as part of an aliased
		// IP
		// range).
		ip_address!: string

		// Port number of network endpoint.
		// **Note** 'port' is required unless the Network Endpoint Group
		// is created
		// with the type of 'GCE_VM_IP'
		port?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
