package res

#google_compute_instance_group_named_port: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_instance_group_named_port")
	close({
		// The name of the instance group.
		group!: string
		id?:    string

		// The name for this named port. The name must be 1-63 characters
		// long, and comply with RFC1035.
		name!: string

		// The port number, which can be a value between 1 and 65535.
		port!:     number
		timeouts?: #timeouts
		project?:  string

		// The zone of the instance group.
		zone?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
