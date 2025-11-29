package res

import "list"

#google_network_connectivity_internal_range: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_connectivity_internal_range")
	close({
		// An optional description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. List of IP CIDR ranges to be excluded. Resulting
		// reserved Internal Range will not overlap with any CIDR blocks
		// mentioned in this list.
		// Only IPv4 CIDR ranges are supported.
		exclude_cidr_ranges?: [...string]

		// Immutable ranges cannot have their fields modified, except for
		// labels and description.
		immutable?: bool

		// The IP range that this internal range defines.
		// NOTE: IPv6 ranges are limited to usage=EXTERNAL_TO_VPC and
		// peering=FOR_SELF
		// NOTE: For IPv6 Ranges this field is compulsory, i.e. the
		// address range must be specified explicitly.
		ip_cidr_range?: string
		id?:            string

		// User-defined labels.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The name of the policy based route.
		name!: string

		// Fully-qualified URL of the network that this route applies to,
		// for example: projects/my-project/global/networks/my-network.
		network!: string

		// Optional. Types of resources that are allowed to overlap with
		// the current internal range. Possible values:
		// ["OVERLAP_ROUTE_RANGE", "OVERLAP_EXISTING_SUBNET_RANGE"]
		overlaps?: [...string]

		// The type of peering set for this internal range. Possible
		// values: ["FOR_SELF", "FOR_PEER", "NOT_SHARED"]
		peering!: string
		allocation_options?: matchN(1, [#allocation_options, list.MaxItems(1) & [...#allocation_options]])
		migration?: matchN(1, [#migration, list.MaxItems(1) & [...#migration]])
		timeouts?: #timeouts

		// An alternate to ipCidrRange. Can be set when trying to create a
		// reservation that automatically finds a free range of the given
		// size.
		// If both ipCidrRange and prefixLength are set, there is an error
		// if the range sizes do not match. Can also be used during
		// updates to change the range size.
		// NOTE: For IPv6 this field only works if ip_cidr_range is set as
		// well, and both fields must match. In other words, with IPv6
		// this field only works as
		// a redundant parameter.
		prefix_length?: number

		// Optional. Can be set to narrow down or pick a different address
		// space while searching for a free range.
		// If not set, defaults to the "10.0.0.0/8" address space. This
		// can be used to search in other rfc-1918 address spaces like
		// "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address
		// spaces used in the VPC.
		target_cidr_range?: [...string]
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The type of usage set for this InternalRange. Possible values:
		// ["FOR_VPC", "EXTERNAL_TO_VPC", "FOR_MIGRATION"]
		usage!: string

		// Output only. The list of resources that refer to this internal
		// range.
		// Resources that use the internal range for their range
		// allocation are referred to as users of the range.
		// Other resources mark themselves as users while doing so by
		// creating a reference to this internal range. Having a user,
		// based on this reference, prevents deletion of the internal
		// range referred to. Can be empty.
		users?: [...string]
	})

	#allocation_options: close({
		// Optional. Sets the strategy used to automatically find a free
		// range of a size given by prefixLength. Can be set only when
		// trying to create a reservation that automatically finds the
		// free range to reserve. Possible values: ["RANDOM",
		// "FIRST_AVAILABLE", "RANDOM_FIRST_N_AVAILABLE",
		// "FIRST_SMALLEST_FITTING"]
		allocation_strategy?: string

		// Must be set when allocation_strategy is
		// RANDOM_FIRST_N_AVAILABLE, otherwise must remain unset. Defines
		// the size of the set of free ranges from which
		// RANDOM_FIRST_N_AVAILABLE strategy randomy selects one,
		// in other words it sets the N in the RANDOM_FIRST_N_AVAILABLE.
		first_available_ranges_lookup_size?: number
	})

	#migration: close({
		// Resource path as an URI of the source resource, for example a
		// subnet.
		// The project for the source resource should match the project
		// for the
		// InternalRange.
		// An example
		// /projects/{project}/regions/{region}/subnetworks/{subnet}
		source!: string

		// Resource path of the target resource. The target project can be
		// different, as in the cases when migrating to peer networks. The
		// resource
		// may not exist yet.
		// For example
		// /projects/{project}/regions/{region}/subnetworks/{subnet}
		target!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
