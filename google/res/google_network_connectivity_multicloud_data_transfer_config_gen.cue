package res

#google_network_connectivity_multicloud_data_transfer_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_connectivity_multicloud_data_transfer_config")
	close({
		// Time when the MulticloudDataTransferConfig resource was
		// created.
		create_time?: string

		// A description of this resource.
		description?: string

		// The number of Destination resources in use with the
		// MulticloudDataTransferConfig resource.
		destinations_active_count?: number

		// The number of Destination resources configured for the
		// MulticloudDataTransferConfig resource.
		destinations_count?: number

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

		// User-defined labels.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the multicloud data transfer config.
		location!: string
		id?:       string

		// The name of the MulticloudDataTransferConfig resource.
		name!: string
		services?: matchN(1, [#services, [...#services]])
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The Google-generated unique ID for the
		// MulticloudDataTransferConfig
		// resource. This value is unique across all
		// MulticloudDataTransferConfig
		// resources. If a resource is deleted and another with the same
		// name is
		// created, the new resource is assigned a different and unique
		// ID.
		uid?:     string
		project?: string

		// Time when the MulticloudDataTransferConfig resource was
		// updated.
		update_time?: string
	})

	#services: close({
		// The name of the service, like "big-query" or "cloud-storage".
		// This corresponds to the map key in the API.
		service_name!: string

		// The state and activation time details for the service.
		states?: [...close({
			effective_time?: string
			state?:          string
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
