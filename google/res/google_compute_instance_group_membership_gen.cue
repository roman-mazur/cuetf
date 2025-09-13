package res

#google_compute_instance_group_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_instance_group_membership")
	close({
		id?: string

		// An instance being added to the InstanceGroup
		instance!: string

		// Represents an Instance Group resource name that the instance
		// belongs to.
		instance_group!: string
		project?:        string

		// A reference to the zone where the instance group resides.
		zone?:     string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
