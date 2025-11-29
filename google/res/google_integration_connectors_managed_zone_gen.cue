package res

#google_integration_connectors_managed_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_integration_connectors_managed_zone")
	close({
		// Time the Namespace was created in UTC.
		create_time?: string

		// Description of the resource.
		description?: string

		// DNS Name of the resource.
		dns!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Resource labels to represent user provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Name of Managed Zone needs to be created.
		name!:    string
		project?: string

		// The name of the Target Project.
		target_project!: string
		timeouts?:       #timeouts

		// The name of the Target Project VPC Network.
		target_vpc!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time the Namespace was updated in UTC.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
