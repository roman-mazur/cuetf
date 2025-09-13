package res

#google_spanner_instance_partition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_spanner_instance_partition")
	close({
		// The name of the instance partition's configuration (similar to
		// a region) which
		// defines the geographic placement and replication of data in
		// this instance partition.
		config!: string

		// The descriptive name for this instance partition as it appears
		// in UIs.
		// Must be unique per project and between 4 and 30 characters in
		// length.
		display_name!: string
		id?:           string

		// The instance to create the instance partition in.
		instance!: string

		// A unique identifier for the instance partition, which cannot be
		// changed after
		// the instance partition is created. The name must be between 2
		// and 64 characters
		// and match the regular expression
		// [a-z][a-z0-9\\-]{0,61}[a-z0-9].
		name!: string

		// The number of nodes allocated to this instance partition. One
		// node equals
		// 1000 processing units. Exactly one of either node_count or
		// processing_units
		// must be present.
		node_count?: number

		// The number of processing units allocated to this instance
		// partition.
		// Exactly one of either node_count or processing_units must be
		// present.
		processing_units?: number
		timeouts?:         #timeouts
		project?:          string

		// The current instance partition state. Possible values are:
		// CREATING: The instance partition is being created. Resources
		// are being
		// allocated for the instance partition.
		// READY: The instance partition has been allocated resources and
		// is ready for use.
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
