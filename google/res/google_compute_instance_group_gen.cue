package res

#google_compute_instance_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_instance_group")
	close({
		// An optional textual description of the instance group.
		description?: string

		// The list of instances in the group, in self_link format. When
		// adding instances they must all be in the same network and zone
		// as the instance group.
		instances?: [...string]
		id?: string

		// The name of the instance group. Must be 1-63 characters long
		// and comply with RFC1035. Supported characters include
		// lowercase letters, numbers, and hyphens.
		name!: string

		// The URL of the network the instance group is in. If this is
		// different from the network where the instances are in, the
		// creation fails. Defaults to the network where the instances
		// are in (if neither network nor instances is specified, this
		// field will be blank).
		network?: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The URI of the created resource.
		self_link?: string
		named_port?: matchN(1, [#named_port, [...#named_port]])
		timeouts?: #timeouts

		// The number of instances in the group.
		size?: number

		// The zone that this instance group should be created in.
		zone?: string
	})

	#named_port: close({
		// The name which the port will be mapped to.
		name!: string

		// The port number to map the name to.
		port!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
