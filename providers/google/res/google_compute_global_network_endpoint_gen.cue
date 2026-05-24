package res

#google_compute_global_network_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_global_network_endpoint")
	close({
		timeouts?: #timeouts

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
		// This can only be specified when network_endpoint_type of the
		// NEG is INTERNET_FQDN_PORT.
		fqdn?: string

		// The global network endpoint group this endpoint is part of.
		global_network_endpoint_group!: string
		id?:                            string

		// IPv4 address external endpoint.
		ip_address?: string

		// Port number of the external endpoint.
		port!:    number
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
