package res

#google_compute_disk_resource_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_disk_resource_policy_attachment")
	close({
		timeouts?: #timeouts

		// The name of the disk in which the resource policies are
		// attached to.
		disk!: string
		id?:   string

		// The resource policy to be attached to the disk for scheduling
		// snapshot
		// creation. Do not specify the self link.
		name!:    string
		project?: string

		// A reference to the zone where the disk resides.
		zone?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
