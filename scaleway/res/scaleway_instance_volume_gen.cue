package res

#scaleway_instance_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_instance_volume")
	close({
		timeouts?: #timeouts

		// Create a volume based on a image
		from_snapshot_id?: string
		id?:               string

		// If true, consider that this volume may have been migrated and
		// no longer exists.
		migrate_to_sbs?: bool

		// The name of the volume
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The server associated with this volume
		server_id?: string

		// The size of the volume in gigabyte
		size_in_gb?: number

		// The tags associated with the volume
		tags?: [...string]

		// The volume type
		type!: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	})
}
