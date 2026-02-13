package res

#google_network_security_mirroring_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_mirroring_endpoint")
	close({
		// The timestamp when the resource was created.
		// See https://google.aip.dev/148#timestamps.
		create_time?: string

		// User-provided description of the endpoint.
		// Used as additional context for the endpoint.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Labels are key/value pairs that help to organize and filter
		// resources.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The cloud location of the endpoint, e.g. 'us-central1-a' or
		// 'asia-south1-b'.
		location!: string

		// The endpoint group that this endpoint belongs to.
		// Format is:
		// 'projects/{project}/locations/{location}/mirroringEndpointGroups/{mirroringEndpointGroup}'
		mirroring_endpoint_group!: string

		// The ID to use for the new endpoint, which will become the final
		// component of the endpoint's resource name.
		mirroring_endpoint_id!: string

		// The resource name of this endpoint, for example:
		// 'projects/123456789/locations/us-central1-a/mirroringEndpoints/my-endpoint'.
		// See https://google.aip.dev/122 for more details.
		name?:     string
		timeouts?: #timeouts
		project?:  string

		// The current state of the resource does not match the user's
		// intended state,
		// and the system is working to reconcile them. This part of the
		// normal
		// operation (e.g. linking a new association to the parent group).
		// See https://google.aip.dev/128.
		reconciling?: bool

		// The current state of the endpoint.
		// See https://google.aip.dev/216.
		// Possible values:
		// STATE_UNSPECIFIED
		// CREATING
		// ACTIVE
		// DELETING
		// DELETE_FAILED
		// OUT_OF_SYNC
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp when the resource was most recently updated.
		// See https://google.aip.dev/148#timestamps.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
