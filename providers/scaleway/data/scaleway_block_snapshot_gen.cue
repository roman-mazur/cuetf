package data

scaleway_block_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_block_snapshot")
	close({
		// The ID of the snapshot, in the `{zone}/{id}` format.
		id?: string

		// The snapshot name
		name?: string

		// The project ID the snapshot belongs to
		project_id?: string

		// The ID of the snapshot
		snapshot_id?: string

		// The Scaleway Resource Name (SRN) of the snapshot
		srn?: string

		// The tags associated with the snapshot
		tags?: [...string]

		// ID of the volume from which creates a snapshot
		volume_id?: string

		// The zone of the snapshot
		zone?: string
	})
}
