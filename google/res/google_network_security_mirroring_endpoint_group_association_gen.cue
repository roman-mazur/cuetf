package res

#google_network_security_mirroring_endpoint_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_mirroring_endpoint_group_association")
	close({
		// The timestamp when the resource was created.
		// See https://google.aip.dev/148#timestamps.
		create_time?: string

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

		// The cloud location of the association, currently restricted to
		// 'global'.
		location!: string

		// The list of locations where the association is configured. This
		// information
		// is retrieved from the linked endpoint group.
		locations?: [...close({
			location?: string
			state?:    string
		})]

		// The endpoint group that this association is connected to, for
		// example:
		// 'projects/123456789/locations/global/mirroringEndpointGroups/my-eg'.
		// See https://google.aip.dev/124.
		mirroring_endpoint_group!: string

		// The ID to use for the new association, which will become the
		// final
		// component of the endpoint group's resource name. If not
		// provided, the
		// server will generate a unique ID.
		mirroring_endpoint_group_association_id?: string

		// The resource name of this endpoint group association, for
		// example:
		// 'projects/123456789/locations/global/mirroringEndpointGroupAssociations/my-eg-association'.
		// See https://google.aip.dev/122 for more details.
		name?: string

		// The VPC network that is associated. for example:
		// 'projects/123456789/global/networks/my-network'.
		// See https://google.aip.dev/124.
		network!:  string
		timeouts?: #timeouts
		project?:  string

		// The current state of the resource does not match the user's
		// intended state,
		// and the system is working to reconcile them. This part of the
		// normal
		// operation (e.g. adding a new location to the target deployment
		// group).
		// See https://google.aip.dev/128.
		reconciling?: bool

		// Current state of the endpoint group association.
		// Possible values:
		// STATE_UNSPECIFIED
		// ACTIVE
		// CREATING
		// DELETING
		// CLOSED
		// OUT_OF_SYNC
		// DELETE_FAILED
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
