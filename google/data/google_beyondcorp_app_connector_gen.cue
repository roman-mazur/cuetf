package data

#google_beyondcorp_app_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_beyondcorp_app_connector")
	close({
		// An arbitrary user-provided name for the AppConnector.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Resource labels to represent user provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// ID of the AppConnector.
		name!: string

		// Principal information about the Identity of the AppConnector.
		principal_info?: [...close({
			service_account?: [...close({
				email?: string
			})]
		})]
		project?: string

		// The region of the AppConnector.
		region?: string

		// Represents the different states of a AppConnector.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})
}
