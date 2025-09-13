package res

#google_compute_network_endpoint_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_network_endpoint_group")
	close({
		// The default port used if the port number is not specified in
		// the
		// network endpoint.
		default_port?: number

		// An optional description of this resource. Provide this property
		// when
		// you create the resource.
		description?: string

		// The uniquely generated identifier for the resource. This
		// identifier is defined by the server.
		generated_id?: number
		id?:           string

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

		// The network to which all network endpoints in the NEG belong.
		// Uses "default" project network if unspecified.
		network!: string

		// Type of network endpoints in this network endpoint group.
		// NON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network
		// endpoint groups (see
		// https://cloud.google.com/load-balancing/docs/hybrid).
		// Note that NON_GCP_PRIVATE_IP_PORT can only be used with Backend
		// Services
		// that 1) have the following load balancing schemes: EXTERNAL,
		// EXTERNAL_MANAGED,
		// INTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the
		// RATE or
		// CONNECTION balancing modes.
		//
		// Possible values include: GCE_VM_IP, GCE_VM_IP_PORT,
		// NON_GCP_PRIVATE_IP_PORT, INTERNET_IP_PORT, INTERNET_FQDN_PORT,
		// SERVERLESS, and PRIVATE_SERVICE_CONNECT. Default value:
		// "GCE_VM_IP_PORT" Possible values: ["GCE_VM_IP",
		// "GCE_VM_IP_PORT", "NON_GCP_PRIVATE_IP_PORT",
		// "INTERNET_IP_PORT", "INTERNET_FQDN_PORT", "SERVERLESS",
		// "PRIVATE_SERVICE_CONNECT"]
		network_endpoint_type?: string
		project?:               string
		self_link?:             string
		timeouts?:              #timeouts

		// Number of network endpoints in the network endpoint group.
		size?: number

		// Optional subnetwork to which all network endpoints in the NEG
		// belong.
		subnetwork?: string

		// Zone where the network endpoint group is located.
		zone?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
