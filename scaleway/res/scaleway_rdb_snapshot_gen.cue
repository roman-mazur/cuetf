package res

#scaleway_rdb_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_rdb_snapshot")
	close({
		// Expiration date of the snapshot in ISO 8601 format (RFC 3339).
		created_at?: string

		// Expiration date of the snapshot in ISO 8601 format (RFC 3339).
		expires_at?: string

		// UUID of the Database Instance on which the snapshot is applied.
		instance_id!: string
		timeouts?:    #timeouts
		id?:          string

		// Name of the snapshot.
		name!: string

		// The type of the database instance for which the snapshot was
		// created.
		node_type?: string

		// The region you want to attach the resource to
		region?: string

		// Size of the snapshot in bytes.
		size?: number

		// Status of the snapshot.
		status?: string

		// Expiration date of the snapshot in ISO 8601 format (RFC 3339).
		updated_at?: string

		// Type of volume where data are stored
		volume_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
