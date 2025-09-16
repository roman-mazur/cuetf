package res

#cloudflare_d1_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_d1_database")
	close({
		// Account identifier tag.
		account_id!: string

		// Specifies the timestamp the resource was created as an ISO8601
		// string.
		created_at?: string

		// The D1 database's size, in bytes.
		file_size?: number

		// D1 database identifier (UUID).
		id?: string

		// Configuration for D1 read replication.
		read_replication?: close({
			// The read replication mode for the database. Use 'auto' to
			// create replicas and allow D1 automatically place them around
			// the world, or 'disabled' to not use any database replicas (it
			// can take a few hours for all replicas to be deleted).
			// Available values: "auto", "disabled".
			mode!: string
		})

		// D1 database name.
		name!:       string
		num_tables?: number

		// Specify the region to create the D1 primary, if available. If
		// this option is omitted, the D1 will be created as close as
		// possible to the current user.
		// Available values: "wnam", "enam", "weur", "eeur", "apac", "oc".
		primary_location_hint?: string

		// D1 database identifier (UUID).
		uuid?:    string
		version?: string
	})
}
