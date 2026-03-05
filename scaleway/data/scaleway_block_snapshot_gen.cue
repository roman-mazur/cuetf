package data

#scaleway_block_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_block_snapshot")
	close({
		// Export snapshot to a qcow
		export?: [...close({
			bucket?: string
			key?:    string
		})]
		id?: string

		// Import snapshot from a qcow
		import?: [...close({
			bucket?: string
			key?:    string
		})]

		// The snapshot name
		name?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The ID of the snapshot
		snapshot_id?: string

		// The tags associated with the snapshot
		tags?: [...string]

		// ID of the volume from which creates a snapshot
		volume_id?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
