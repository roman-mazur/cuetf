package res

#google_compute_global_network_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_global_network_endpoint")
	close({
		// Fully qualified domain name of network endpoint.
		// This can only be specified when network_endpoint_type of the
		// NEG is INTERNET_FQDN_PORT.
		fqdn?: string

		// The global network endpoint group this endpoint is part of.
		global_network_endpoint_group!: string
		id?:                            string

		// IPv4 address external endpoint.
		ip_address?: string

		// Port number of the external endpoint.
		port!:     number
		timeouts?: #timeouts
		project?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
