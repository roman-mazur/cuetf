package res

#google_compute_region_network_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_network_endpoint")
	close({
		// Fully qualified domain name of network endpoint.
		//
		// This can only be specified when network_endpoint_type of the
		// NEG is INTERNET_FQDN_PORT.
		fqdn?: string

		// IPv4 address external endpoint.
		//
		// This can only be specified when network_endpoint_type of the
		// NEG is INTERNET_IP_PORT.
		ip_address?: string
		id?:         string

		// The unique identifier number for the resource. This identifier
		// is defined by the server.
		network_endpoint_id?: number

		// Port number of network endpoint.
		port!: number

		// Region where the containing network endpoint group is located.
		region?:   string
		project?:  string
		timeouts?: #timeouts

		// The network endpoint group this endpoint is part of.
		region_network_endpoint_group!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
