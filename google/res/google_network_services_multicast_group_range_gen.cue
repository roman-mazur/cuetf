package res

import "list"

#google_network_services_multicast_group_range: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_multicast_group_range")
	close({
		// A list of consumer projects that are allowed to subscribe to
		// the multicast
		// IP addresses within the range defined by this
		// MulticastGroupRange. The
		// project can be specified using its project ID or project
		// number. If left
		// empty, then all consumer projects are allowed (unless
		// require_explicit_accept is set to true) once they have VPC
		// networks
		// associated to the multicast domain. The current max length of
		// the accept
		// list is 100.
		consumer_accept_list?: [...string]

		// [Output only] The timestamp when the multicast group range was
		// created.
		create_time?: string

		// An optional text description of the multicast group range.
		description?: string

		// Multicast group range's distribution scope. Intra-zone or
		// intra-region
		// cross-zone is supported, with default value being intra-region.
		// Cross
		// region distribution is not supported.
		// Possible values:
		// INTRA_ZONE
		// INTRA_REGION
		distribution_scope?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

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

		// The resource name of the multicast domain in which to create
		// this
		// multicast group range.
		// Use the following format:
		// 'projects/*/locations/global/multicastDomains/*'.
		multicast_domain!: string

		// A unique name for the multicast group range.
		// The name is restricted to letters, numbers, and hyphen, with
		// the first
		// character a letter, and the last a letter or a number. The name
		// must not
		// exceed 48 characters.
		multicast_group_range_id!: string

		// Identifier. The resource name of the multicast group range.
		// Use the following format:
		// 'projects/*/locations/global/multicastGroupRanges/*'.
		name?: string
		log_config?: matchN(1, [#log_config, list.MaxItems(1) & [...#log_config]])
		timeouts?: #timeouts

		// Whether an empty consumer_accept_list will deny all consumer
		// projects.
		require_explicit_accept?: bool
		project?:                 string

		// The resource name of the internal range reserved for this
		// multicast group range.
		//
		// The internal range must be a Class D address (224.0.0.0 to
		// 239.255.255.255)
		// and have a prefix length >= 23.
		//
		// Use the following format:
		// 'projects/*/locations/global/internalRanges/*'.
		reserved_internal_range!: string

		// The multicast resource's state.
		state?: [...close({
			state?: string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// [Output only] The Google-generated UUID for the resource. This
		// value is
		// unique across all multicast group range resources. If a group
		// range is deleted and another with the same name is created, the
		// new
		// group range is assigned a different unique_id.
		unique_id?: string

		// [Output only] The timestamp when the multicast group range was
		// most
		// recently updated.
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
