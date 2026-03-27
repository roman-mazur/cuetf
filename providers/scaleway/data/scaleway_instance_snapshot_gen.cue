package data

#scaleway_instance_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_instance_snapshot")
	close({
		// The date and time of the creation of the snapshot
		created_at?: string
		id?:         string

		// Import snapshot from a qcow
		import?: [...close({
			bucket?: string
			key?:    string
		})]

		// The name of the snapshot
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The size of the snapshot in gigabyte
		size_in_gb?: number

		// The ID of the snapshot
		snapshot_id?: string

		// The tags associated with the snapshot
		tags?: [...string]

		// The snapshot's volume type
		type?: string

		// ID of the volume to take a snapshot from
		volume_id?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
