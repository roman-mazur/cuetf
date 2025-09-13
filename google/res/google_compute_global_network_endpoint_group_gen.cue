package res

#google_compute_global_network_endpoint_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_global_network_endpoint_group")
	close({
		// The default port used if the port number is not specified in
		// the
		// network endpoint.
		default_port?: number

		// An optional description of this resource. Provide this property
		// when
		// you create the resource.
		description?: string
		id?:          string

		// Name of the resource; provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		name!: string

		// Type of network endpoints in this network endpoint group.
		// Possible values: ["INTERNET_IP_PORT", "INTERNET_FQDN_PORT"]
		network_endpoint_type!: string
		timeouts?:              #timeouts
		project?:               string
		self_link?:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
