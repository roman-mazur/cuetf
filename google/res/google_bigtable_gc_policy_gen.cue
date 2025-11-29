package res

import "list"

#google_bigtable_gc_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigtable_gc_policy")
	close({
		// The name of the column family.
		column_family!: string

		// The deletion policy for the GC policy. Setting ABANDON allows
		// the resource
		// to be abandoned rather than deleted. This is useful for GC
		// policy as it cannot be deleted
		// in a replicated instance. Possible values are: "ABANDON".
		deletion_policy?: string

		// Serialized JSON string for garbage collection policy. Conflicts
		// with "mode", "max_age" and "max_version".
		gc_rules?: string
		id?:       string

		// Allows ignoring warnings when updating the GC policy. This can
		// be used
		// to increase the gc policy on replicated clusters. Doing this
		// may make clusters be
		// inconsistent for a longer period of time, before using this
		// make sure you understand
		// the risks listed at
		// https://cloud.google.com/bigtable/docs/garbage-collection#increasing
		ignore_warnings?: bool

		// The name of the Bigtable instance.
		instance_name!: string

		// NOTE: 'gc_rules' is more flexible, and should be preferred over
		// this field for new resources. This field may be deprecated in
		// the future. If multiple policies are set, you should choose
		// between UNION OR INTERSECTION.
		mode?: string
		max_age?: matchN(1, [#max_age, list.MaxItems(1) & [...#max_age]])
		max_version?: matchN(1, [#max_version, [...#max_version]])
		timeouts?: #timeouts

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The name of the table.
		table!: string
	})

	#max_age: close({
		// Duration before applying GC policy
		duration?: string
	})

	#max_version: close({
		// Number of version before applying the GC policy.
		"number"!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
