package res

import "list"

#google_database_migration_service_private_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_database_migration_service_private_connection")
	close({
		// If set to true, will skip validations.
		create_without_validation?: bool

		// Display name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The PrivateConnection error in case of failure.
		error?: [...close({
			details?: [string]: string
			message?: string
		})]
		id?: string

		// Labels.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The name of the location this private connection is located in.
		location!: string

		// The resource's name.
		name?:     string
		timeouts?: #timeouts

		// The private connectivity identifier.
		private_connection_id!: string
		project?:               string
		vpc_peering_config!: matchN(1, [#vpc_peering_config, list.MaxItems(1) & [_, ...] & [...#vpc_peering_config]])

		// State of the PrivateConnection.
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

	#vpc_peering_config: close({
		// A free subnet for peering. (CIDR of /29)
		subnet!: string

		// Fully qualified name of the VPC that Database Migration Service
		// will peer to.
		// Format: projects/{project}/global/{networks}/{name}
		vpc_name!: string
	})
}
