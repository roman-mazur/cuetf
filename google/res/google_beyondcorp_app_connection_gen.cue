package res

import "list"

#google_beyondcorp_app_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_beyondcorp_app_connection")
	close({
		// List of AppConnectors that are authorised to be associated with
		// this AppConnection
		connectors?: [...string]

		// An arbitrary user-provided name for the AppConnection.
		display_name?: string

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

		// ID of the AppConnection.
		name!:    string
		project?: string

		// The region of the AppConnection.
		region?: string
		application_endpoint!: matchN(1, [#application_endpoint, list.MaxItems(1) & [_, ...] & [...#application_endpoint]])
		gateway?: matchN(1, [#gateway, list.MaxItems(1) & [...#gateway]])
		timeouts?: #timeouts

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

	#application_endpoint: close({
		// Hostname or IP address of the remote application endpoint.
		host!: string

		// Port of the remote application endpoint.
		port!: number
	})

	#gateway: close({
		// AppGateway name in following format:
		// projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}.
		app_gateway!: string

		// Ingress port reserved on the gateways for this AppConnection,
		// if not specified or zero, the default port is 19443.
		ingress_port?: number

		// The type of hosting used by the gateway. Refer to
		// https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#Type_1
		// for a list of possible values.
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
