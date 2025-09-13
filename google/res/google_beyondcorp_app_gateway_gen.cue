package res

#google_beyondcorp_app_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_beyondcorp_app_gateway")
	close({
		// A list of connections allocated for the Gateway.
		allocated_connections?: [...close({
			ingress_port?: number
			psc_uri?:      string
		})]

		// An arbitrary user-provided name for the AppGateway.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The type of hosting used by the AppGateway. Default value:
		// "HOST_TYPE_UNSPECIFIED" Possible values:
		// ["HOST_TYPE_UNSPECIFIED", "GCP_REGIONAL_MIG"]
		host_type?: string
		id?:        string

		// Resource labels to represent user provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// ID of the AppGateway.
		name!: string

		// The region of the AppGateway.
		region?: string

		// Represents the different states of a AppGateway.
		state?:    string
		project?:  string
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The type of network connectivity used by the AppGateway.
		// Default value: "TYPE_UNSPECIFIED" Possible values:
		// ["TYPE_UNSPECIFIED", "TCP_PROXY"]
		type?: string

		// Server-defined URI for this resource.
		uri?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
