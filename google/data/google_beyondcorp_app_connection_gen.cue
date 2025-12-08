package data

#google_beyondcorp_app_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_beyondcorp_app_connection")
	close({
		// Address of the remote application endpoint for the BeyondCorp
		// AppConnection.
		application_endpoint?: [...close({
			host?: string
			port?: number
		})]

		// List of AppConnectors that are authorised to be associated with
		// this AppConnection
		connectors?: [...string]

		// An arbitrary user-provided name for the AppConnection.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Gateway used by the AppConnection.
		gateway?: [...close({
			app_gateway?:  string
			ingress_port?: number
			type?:         string
			uri?:          string
		})]
		id?: string

		// Resource labels to represent user provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// ID of the AppConnection.
		name!:    string
		project?: string

		// The region of the AppConnection.
		region?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The type of network connectivity used by the AppConnection.
		// Refer
		// to
		// https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type
		// for a list of possible values.
		type?: string
	})
}
