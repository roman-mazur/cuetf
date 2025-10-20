package res

#google_oracle_database_odb_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_oracle_database_odb_network")
	close({
		// The date and time that the OdbNetwork was created.
		create_time?: string

		// Whether or not to allow Terraform to destroy the instance.
		// Unless this field is set to false in Terraform state, a
		// terraform destroy or terraform apply that would delete the
		// instance will fail.
		deletion_protection?: bool

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The ID of the subscription entitlement associated with the
		// OdbNetwork.
		entitlement_id?: string

		// The GCP Oracle zone where OdbNetwork is hosted.
		// Example: us-east4-b-r2.
		// If not specified, the system will pick a zone based on
		// availability.
		gcp_oracle_zone?: string
		id?:              string

		// Labels or tags associated with the resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The name of the OdbNetwork resource in the
		// following format:
		// projects/{project}/locations/{region}/odbNetworks/{odb_network}
		name?:     string
		timeouts?: #timeouts

		// The name of the VPC network in the following format:
		// projects/{project}/global/networks/{network}
		network!: string

		// The ID of the OdbNetwork to create. This value is restricted
		// to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must be a maximum of
		// 63
		// characters in length. The value must start with a letter and
		// end with
		// a letter or a number.
		odb_network_id!: string
		project?:        string

		// State of the ODB Network.
		// Possible values:
		// PROVISIONING
		// AVAILABLE
		// TERMINATING
		// FAILED
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
