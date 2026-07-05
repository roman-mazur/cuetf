package res

google_network_connectivity_transport: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_connectivity_transport")
	close({
		timeouts?: #timeouts

		// List of IP Prefixes that will be advertised to the remote provider. Both IPv4
		// and IPv6 addresses are supported.
		advertised_routes?: [...string]

		// Bandwidth of the Transport. This must be one of the supported bandwidths for the remote profile.
		bandwidth?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// An optional description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// [Output only] Google-generated activation key. This is only output if the
		// selected profile supports an OUTPUT key flow. Inputting this to the provider
		// is only valid while the resource is in a PENDING_KEY state. Once the
		// provider has accepted the key, the resource will move to the CONFIGURING
		// state.
		generated_activation_key?: string
		id?:                       string

		// Optional labels in key:value format. For more information about labels, see
		// [Requirements for
		// labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// [Output only] The maximum transmission unit (MTU) of a packet that can be
		// sent over this transport.
		mtu_limit?: number

		// Name of the resource, see google.aip.dev/122 for resource naming.
		name!: string

		// Resource URL of the Network that will be peered with this Transport. This
		// field must be provided during resource creation and cannot be changed.
		network!: string

		// VPC Network URI that was created for the VPC Peering connection to the
		// provided 'network'. If VPC Peering is disconnected, this can be used to
		// re-establish.
		peering_network?: string

		// Key used for establishing a connection with the remote transport. This key
		// can only be provided if the profile supports an INPUT key flow and the
		// resource is in the PENDING_KEY state.
		provided_activation_key?: string
		project?:                 string

		// The region of this resource. This is required to construct the resource name,
		// but is not sent to the API since the region is already contained in the
		// parent field.
		region!: string

		// The user supplied account id for the CSP associated with the remote profile.
		remote_account_id?: string

		// Resource URL of the remoteTransportProfile that this Transport is
		// connecting to.
		remote_profile!: string

		// IP version stack for the established connectivity. Possible values: ["IPV4_IPV6", "IPV4_ONLY"]
		stack_type?: string

		// [Output Only] State of the underlying connectivity.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
