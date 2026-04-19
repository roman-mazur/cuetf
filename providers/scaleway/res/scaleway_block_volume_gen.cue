package res

#scaleway_block_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_block_volume")
	close({
		id?: string

		// The instance volume to create the block volume from
		instance_volume_id?: string
		timeouts?:           #timeouts

		// The maximum IO/s expected, must match available options
		iops!: number

		// The volume name
		name?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The volume size in GB
		size_in_gb?: number

		// The snapshot to create the volume from
		snapshot_id?: string

		// The tags associated with the volume
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
	})
}
