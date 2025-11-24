package res

#google_network_security_firewall_endpoint_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_firewall_endpoint_association")
	close({
		// Time the firewall endpoint was created in UTC.
		create_time?: string

		// Whether the association is disabled. True indicates that
		// traffic will not be intercepted.
		//
		// ~> **Note:** The API will reject the request if this value is
		// set to true when creating the resource,
		// otherwise on an update the association can be disabled.
		disabled?: bool

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The URL of the firewall endpoint that is being associated.
		firewall_endpoint!: string

		// A map of key/value label pairs to assign to the resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location (zone) of the firewall endpoint association.
		location!: string

		// The name of the firewall endpoint association resource.
		name!: string
		id?:   string

		// The URL of the network that is being associated.
		network!: string

		// The name of the parent this firewall endpoint association
		// belongs to.
		// Format: projects/{project_id}.
		parent?:   string
		timeouts?: #timeouts

		// Whether reconciling is in progress, recommended per
		// https://google.aip.dev/128.
		reconciling?: bool

		// Server-defined URL of this resource.
		self_link?: string

		// The current state of the endpoint.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The URL of the TlsInspectionPolicy that is being associated.
		tls_inspection_policy?: string

		// Time the firewall endpoint was updated in UTC.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
