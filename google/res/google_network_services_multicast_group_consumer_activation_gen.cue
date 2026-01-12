package res

import "list"

#google_network_services_multicast_group_consumer_activation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_multicast_group_consumer_activation")
	close({
		// The timestamp when the multicast group consumer activation
		// was created.
		create_time?: string

		// An optional text description of the multicast group consumer
		// activation.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Labels as key-value pairs
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// The resource name of the multicast consumer association that is
		// in the
		// same zone as this multicast group consumer activation.
		// Use the following format:
		// 'projects/*/locations/*/multicastConsumerAssociations/*'.
		multicast_consumer_association!: string

		// A unique name for the multicast group consumer activation.
		// The name is restricted to letters, numbers, and hyphen, with
		// the first
		// character a letter, and the last a letter or a number. The name
		// must not
		// exceed 48 characters.
		multicast_group_consumer_activation_id!: string

		// The resource name of the multicast group range activation
		// created by the
		// admin in the same zone as this multicast group consumer
		// activation. Use the
		// following format:
		// // 'projects/*/locations/*/multicastGroupRangeActivations/*'.
		multicast_group_range_activation!: string

		// Identifier. The resource name of the multicast group consumer
		// activation.
		// Use the following format:
		// 'projects/*/locations/*/multicastGroupConsumerActivations/*'.
		name?: string
		log_config?: matchN(1, [#log_config, list.MaxItems(1) & [...#log_config]])
		timeouts?: #timeouts
		project?:  string

		// The multicast resource's state.
		state?: [...close({
			state?: string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The Google-generated UUID for the resource. This value is
		// unique across all multicast group consumer activation
		// resources. If a group
		// consumer activation is deleted and another with the same name
		// is created,
		// the new group consumer activation is assigned a different
		// unique_id.
		unique_id?: string

		// The timestamp when the multicast group consumer activation
		// was most recently updated.
		update_time?: string
	})

	#log_config: close({
		// Whether to enable logging or not.
		enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
