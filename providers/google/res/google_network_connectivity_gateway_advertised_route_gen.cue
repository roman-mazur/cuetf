package res

google_network_connectivity_gateway_advertised_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_connectivity_gateway_advertised_route")
	close({
		timeouts?: #timeouts

		// The time the gateway advertised route was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// An optional description of the gateway advertised route.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// This route's advertised IP address range. Must be a valid CIDR-formatted prefix.
		// If an IP address is provided without a subnet mask, it is interpreted as, for
		// IPv4, a /32 singular IP address range, and, for IPv6, /128
		ip_range?: string

		// Optional labels in key:value format. For more information about labels, see
		// [Requirements for
		// labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The location for the resource
		location!: string

		// The name of the gateway advertised route. Route names must be unique.
		name!: string

		// The priority of this advertised route. You can choose a value from 0 to 65335.
		// If you don't provide a value, Google Cloud assigns a priority of 100 to the ranges.
		priority?: number

		// the recipient of this advertised route Possible values:
		// ["RECIPIENT_UNSPECIFIED", "ADVERTISE_TO_HUB"]
		recipient?: string
		project?:   string

		// The name of the spoke
		spoke!: string

		// The current lifecycle state of this gateway advertised route.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The Google-generated UUID for the gateway advertised route.
		// This value is unique across all gateway advertised route resources.
		// If a gateway advertised route is deleted and another with the same name is
		// created, the new route is assigned a different uniqueId.
		unique_id?: string

		// The time the gateway advertised route was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
