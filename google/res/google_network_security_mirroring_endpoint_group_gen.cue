package res

#google_network_security_mirroring_endpoint_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_security_mirroring_endpoint_group")
	close({
		// List of associations to this endpoint group.
		associations?: [...close({
			name?:    string
			network?: string
			state?:   string
		})]

		// List of details about the connected deployment groups to this
		// endpoint
		// group.
		connected_deployment_groups?: [...close({
			locations?: [...close({
				location?: string
				state?:    string
			})]
			name?: string
		})]

		// The timestamp when the resource was created.
		// See https://google.aip.dev/148#timestamps.
		create_time?: string

		// User-provided description of the endpoint group.
		// Used as additional context for the endpoint group.
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

		// The cloud location of the endpoint group, currently restricted
		// to 'global'.
		location!: string
		id?:       string

		// The deployment group that this DIRECT endpoint group is
		// connected to, for example:
		// 'projects/123456789/locations/global/mirroringDeploymentGroups/my-dg'.
		// See https://google.aip.dev/124.
		mirroring_deployment_group?: string

		// The ID to use for the endpoint group, which will become the
		// final component
		// of the endpoint group's resource name.
		mirroring_endpoint_group_id!: string

		// The resource name of this endpoint group, for example:
		// 'projects/123456789/locations/global/mirroringEndpointGroups/my-eg'.
		// See https://google.aip.dev/122 for more details.
		name?:     string
		timeouts?: #timeouts

		// The current state of the resource does not match the user's
		// intended state,
		// and the system is working to reconcile them. This is part of
		// the normal
		// operation (e.g. adding a new association to the group).
		// See https://google.aip.dev/128.
		reconciling?: bool

		// The current state of the endpoint group.
		// See https://google.aip.dev/216.
		// Possible values:
		// STATE_UNSPECIFIED
		// ACTIVE
		// CLOSED
		// CREATING
		// DELETING
		// OUT_OF_SYNC
		// DELETE_FAILED
		state?:   string
		project?: string

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
