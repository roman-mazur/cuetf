package data

scaleway_block_snapshots: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_block_snapshots")
	close({
		// Filter snapshots by their name
		name?: string

		// Criteria to use when ordering the list of snapshots. Default value: created_at_asc
		order_by?: string

		// Filter snapshots by organization ID
		organization_id?: string

		// Filter snapshots by project ID
		project_id?: string

		// List of snapshots
		snapshots?: matchN(1, [close({
			// ID of the snapshot in zone/uuid format
			id?: string

			// Name of the snapshot
			name?: string

			// The project ID the snapshot belongs to
			project_id?: string

			// The Scaleway Resource Name (SRN) of the snapshot
			srn?: string

			// List of tags assigned to the snapshot
			tags?: [...string]

			// ID of the volume from which the snapshot was created
			volume_id?: string

			// The zone of the snapshot
			zone?: string
		}), [...close({
			// ID of the snapshot in zone/uuid format
			id?: string

			// Name of the snapshot
			name?: string

			// The project ID the snapshot belongs to
			project_id?: string

			// The Scaleway Resource Name (SRN) of the snapshot
			srn?: string

			// List of tags assigned to the snapshot
			tags?: [...string]

			// ID of the volume from which the snapshot was created
			volume_id?: string

			// The zone of the snapshot
			zone?: string
		})]])

		// Filter snapshots by tags. Only snapshots with one or more matching tags will be returned
		tags?: [...string]

		// Filter snapshots by the ID of the original volume
		volume_id?: string

		// The zone in which to list snapshots. Defaults to the zone of the provider
		zone?: string
	})
}
