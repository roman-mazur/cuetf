package res

#google_network_connectivity_regional_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_connectivity_regional_endpoint")
	close({
		// The access type of this regional endpoint. This field is
		// reflected in the PSC Forwarding Rule configuration to enable
		// global access. Possible values: ["GLOBAL", "REGIONAL"]
		access_type!: string

		// The IP Address of the Regional Endpoint. When no address is
		// provided, an IP from the subnetwork is allocated. Use one of
		// the following formats: * IPv4 address as in '10.0.0.1' *
		// Address resource URI as in
		// 'projects/{project}/regions/{region}/addresses/{address_name}'
		//
		// ~> **Note:** This field accepts both a reference to a Compute
		// Address resource, which is the resource name of which format
		// is given in the description, and IP literal value. If the user
		// chooses to input a reserved address value; they need to make
		// sure that the reserved address is in IPv4 version, its purpose
		// is GCE_ENDPOINT, its type is INTERNAL and its status is
		// RESERVED. If the user chooses to input an IP literal, they
		// need to make sure that it's a valid IPv4 address (x.x.x.x)
		// within the subnetwork.
		address?: string

		// Time when the RegionalEndpoint was created.
		create_time?: string

		// A description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// User-defined labels.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the RegionalEndpoint.
		location!: string
		id?:       string

		// The name of the RegionalEndpoint.
		name!: string

		// The name of the VPC network for this private regional endpoint.
		// Format: 'projects/{project}/global/networks/{network}'
		network?: string

		// The resource reference of the PSC Forwarding Rule created on
		// behalf of the customer. Format:
		// '//compute.googleapis.com/projects/{project}/regions/{region}/forwardingRules/{forwarding_rule_name}'
		psc_forwarding_rule?: string
		timeouts?:            #timeouts

		// The name of the subnetwork from which the IP address will be
		// allocated. Format:
		// 'projects/{project}/regions/{region}/subnetworks/{subnetwork}'
		subnetwork?: string
		project?:    string

		// The service endpoint this private regional endpoint connects
		// to. Format: '{apiname}.{region}.rep.googleapis.com' Example:
		// \"cloudkms.us-central1.rep.googleapis.com\".
		target_google_api!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time when the RegionalEndpoint was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
