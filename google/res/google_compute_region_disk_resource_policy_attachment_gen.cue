package res

#google_compute_region_disk_resource_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_region_disk_resource_policy_attachment")
	close({
		// The name of the regional disk in which the resource policies
		// are attached to.
		disk!: string

		// The resource policy to be attached to the disk for scheduling
		// snapshot
		// creation. Do not specify the self link.
		name!: string
		id?:   string

		// A reference to the region where the disk resides.
		region?:   string
		project?:  string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
