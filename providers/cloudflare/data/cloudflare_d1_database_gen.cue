package data

cloudflare_d1_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_d1_database")
	close({
		// Account identifier tag.
		account_id?: string

		// Specifies the timestamp the resource was created as an ISO8601 string.
		created_at?: string

		// D1 database identifier (UUID).
		database_id?: string

		// Comma-separated list of fields to include in the response. When omitted,
		// all fields are returned.
		fields?: [...string]

		// The D1 database's size, in bytes.
		file_size?: number
		filter?: close({
			// a database name to search for.
			name?: string
		})

		// D1 database identifier (UUID).
		id?: string

		// Specify the location to restrict the D1 database to run and store data. If
		// this option is present, the location hint is ignored.
		// Available values: "eu", "fedramp".
		jurisdiction?: string

		// D1 database name.
		name?:       string
		num_tables?: number

		// Configuration for D1 read replication.
		read_replication?: close({
			// The read replication mode for the database. Mode 'auto' denotes that D1
			// creates replicas and automatically places them around the world. Mode
			// 'disabled' denotes that no database replicas are used.
			// Available values: "auto", "disabled".
			mode?: string
		})

		// D1 database identifier (UUID).
		uuid?:    string
		version?: string
	})
}
