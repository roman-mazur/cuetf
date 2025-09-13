package res

#google_compute_resource_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_resource_policy_attachment")
	close({
		id?: string

		// The name of the instance in which the resource policies are
		// attached to.
		instance!: string

		// The resource policy to be attached to the instance for
		// scheduling start/stop
		// operations. Do not specify the self link.
		name!:    string
		project?: string

		// A reference to the zone where the instance resides.
		zone?:     string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
