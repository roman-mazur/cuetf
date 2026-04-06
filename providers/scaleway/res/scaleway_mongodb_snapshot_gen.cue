package res

#scaleway_mongodb_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_mongodb_snapshot")
	close({
		timeouts?: #timeouts

		// The date and time when the snapshot was created
		created_at?: string

		// Expiration date (Format ISO 8601). Cannot be removed.
		expires_at!: string
		id?:         string

		// The ID of the instance from which the snapshot was created
		instance_id!: string

		// Name of the instance from which the snapshot was created
		instance_name?: string

		// Name of the snapshot
		name?: string

		// Type of node associated with the snapshot
		node_type?: string

		// The region you want to attach the resource to
		region?: string

		// Size of the snapshot in bytes
		size?: number

		// The date and time of the last update of the snapshot
		updated_at?: string

		// Type of volume used for the snapshot (e.g., SSD, HDD)
		volume_type?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	})
}
