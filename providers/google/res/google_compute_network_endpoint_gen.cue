package res

google_compute_network_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_network_endpoint")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The name for a specific VM instance that the IP address belongs to.
		// This is required for network endpoints of type GCE_VM_IP_PORT.
		// The instance must be in the same zone of network endpoint group.
		instance?: string

		// IPv4 address of network endpoint. The IP address must belong
		// to a VM in GCE (either the primary IP or as part of an aliased IP
		// range).
		ip_address!: string

		// The network endpoint group this endpoint is part of.
		network_endpoint_group!: string

		// Port number of network endpoint.
		// **Note** 'port' is required unless the Network Endpoint Group is created
		// with the type of 'GCE_VM_IP'
		port?: number

		// Zone where the containing network endpoint group is located.
		zone?:    string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
