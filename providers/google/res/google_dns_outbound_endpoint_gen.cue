package res

google_dns_outbound_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dns_outbound_endpoint")
	close({
		timeouts?: #timeouts

		// Annotations as key value pairs
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the
		// annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of the annotations
		// present on the resource.
		annotations?: [string]: string

		// The timestamp when the resource was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// User provided description.
		description?: string

		// All of annotations (key/value pairs) present on the resource in GCP,
		// including the annotations configured through Terraform, other clients and
		// services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// User provided IP address to use for outbound DNS forwarding. This address
		// must be a free address on the subnetwork. If omitted, a free IP address
		// from the subnetwork is automatically allocated.
		endpoint_ip?: string
		id?:          string

		// Labels as key value pairs
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The location of the OutboundEndpoint.
		location!: string

		// The name of the OutboundEndpoint.
		name!: string

		// The VPC network containing the outbound endpoint, specified as full path.
		network!: string

		// The subnetwork holding the endpoint_ip, specified as full path.
		subnetwork!: string
		project?:    string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp when the resource was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
