package res

#google_compute_region_network_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_network_endpoint")
	close({
		timeouts?: #timeouts

		// Client destination port for the 'GCE_VM_IP_PORTMAP' NEG.
		client_destination_port?: number

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Fully qualified domain name of network endpoint.
		//
		// This can only be specified when network_endpoint_type of the
		// NEG is INTERNET_FQDN_PORT.
		fqdn?: string
		id?:   string

		// The name for a specific VM instance that the IP address belongs
		// to.
		// This is required for network endpoints of type
		// GCE_VM_IP_PORTMAP.
		instance?: string

		// IPv4 address external endpoint.
		//
		// This can only be specified when network_endpoint_type of the
		// NEG is INTERNET_IP_PORT.
		ip_address?: string

		// The unique identifier number for the resource. This identifier
		// is defined by the server.
		network_endpoint_id?: number

		// Port number of network endpoint.
		port!:    number
		project?: string

		// Region where the containing network endpoint group is located.
		region?: string

		// The network endpoint group this endpoint is part of.
		region_network_endpoint_group!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
