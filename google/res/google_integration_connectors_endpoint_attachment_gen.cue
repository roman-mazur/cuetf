package res

#google_integration_connectors_endpoint_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_integration_connectors_endpoint_attachment")
	close({
		// Time the Namespace was created in UTC.
		create_time?: string

		// Description of the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Enable global access for endpoint attachment.
		endpoint_global_access?: bool

		// The Private Service Connect connection endpoint ip.
		endpoint_ip?: string
		id?:          string

		// Resource labels to represent user provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Location in which Endpoint Attachment needs to be created.
		location!: string

		// Name of Endpoint Attachment needs to be created.
		name!:     string
		timeouts?: #timeouts

		// The path of the service attachment.
		service_attachment!: string
		project?:            string

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
