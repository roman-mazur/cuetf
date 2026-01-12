package res

#google_network_connectivity_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_connectivity_destination")
	close({
		// Time when the 'Destination' resource was created.
		create_time?: string

		// A description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The etag is computed by the server, and might be sent with
		// update and
		// delete requests so that the client has an up-to-date value
		// before
		// proceeding.
		etag?: string

		// The IP prefix that represents your workload on another CSP.
		ip_prefix!: string
		id?:        string

		// User-defined labels.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the destination.
		location!: string

		// The multicloud data transfer config of the destination.
		multicloud_data_transfer_config!: string

		// The name of the destination.
		name!: string
		endpoints!: matchN(1, [#endpoints, [_, ...] & [...#endpoints]])
		timeouts?: #timeouts
		project?:  string

		// The timeline of the expected 'Destination' states or the
		// current rest
		// state. If a state change is expected, the value is 'ADDING',
		// 'DELETING' or 'SUSPENDING', depending on the action specified.
		state_timeline?: [...close({
			states?: [...close({
				effective_time?: string
				state?:          string
			})]
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The Google-generated unique ID for the 'Destination' resource.
		// This value is unique across all 'Destination' resources.
		// If a resource is deleted and another with the same name is
		// created, the new resource is assigned a different and unique
		// ID.
		uid?: string

		// Time when the 'Destination' resource was updated.
		update_time?: string
	})

	#endpoints: close({
		// The ASN of the remote IP prefix.
		asn!: string

		// The CSP of the remote IP prefix.
		csp!: string

		// The state of the DestinationEndpoint resource.
		state?: string

		// Time when the DestinationEndpoint resource was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
