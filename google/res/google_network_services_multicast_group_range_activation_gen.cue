package res

import "list"

#google_network_services_multicast_group_range_activation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_multicast_group_range_activation")
	close({
		// [Output only] The timestamp when the multicast group range
		// activation was
		// created.
		create_time?: string

		// An optional text description of the multicast group range
		// activation.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// [Output only] The multicast group IP address range.
		ip_cidr_range?: string

		// Labels as key-value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		id?:       string

		// The resource name of a multicast domain activation that is in
		// the
		// same zone as this multicast group.
		// Use the following format:
		// 'projects/*/locations/*/multicastDomainActivations/*'
		multicast_domain_activation!: string

		// The resource names of associated multicast group consumer
		// activations.
		// Use the following format:
		// 'projects/*/locations/*/multicastGroupConsumerActivations/*'.
		multicast_group_consumer_activations?: [...string]

		// The resource name of the global multicast group range for the
		// group. Use the following format:
		// 'projects/*/locations/global/multicastGroupRanges/*'
		multicast_group_range!: string

		// A unique name for the multicast group range activation.
		// The name is restricted to letters, numbers, and hyphen, with
		// the first
		// character a letter, and the last a letter or a number. The name
		// must not
		// exceed 48 characters.
		multicast_group_range_activation_id!: string

		// Identifier. The resource name of the multicast group range
		// activation.
		// Use the following format:
		// 'projects/*/locations/*/multicastGroupRangeActivations/*'.
		name?: string
		log_config?: matchN(1, [#log_config, list.MaxItems(1) & [...#log_config]])
		timeouts?: #timeouts

		// The multicast resource's state.
		state?: [...close({
			state?: string
		})]
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// [Output only] The Google-generated UUID for the resource. This
		// value is
		// unique across all multicast group resources. If a group is
		// deleted and
		// another with the same name is created, the new group is
		// assigned a
		// different unique_id.
		unique_id?: string

		// [Output only] The timestamp when the multicast group range
		// activation was
		// most recently updated.
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
