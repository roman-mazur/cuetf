package res

scaleway_block_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_block_volume")
	close({
		// The ID of the volume, in the `{zone}/{uuid}` format.
		id?: string

		// The instance volume to create the block volume from
		instance_volume_id?: string

		// The maximum IO/s expected, must match available options
		iops!: number

		// The volume name
		name?: string

		// The project ID the volume belongs to. Defaults to the provider's project ID.
		project_id?: string

		// The volume size in GB. Defaults to 5GB, or to the snapshot's size if `snapshot_id` is specified
		size_in_gb?: number

		// The snapshot to create the volume from
		snapshot_id?: string

		// The Scaleway Resource Name (SRN) of the volume
		srn?: string

		// The tags associated with the volume
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})
}
