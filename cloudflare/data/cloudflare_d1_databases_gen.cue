package data

#cloudflare_d1_databases: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_d1_databases")
	close({
		// Account identifier tag.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Specifies the timestamp the resource was created as an ISO8601
			// string.
			created_at?: string

			// D1 database identifier (UUID).
			id?: string

			// D1 database name.
			name?: string

			// D1 database identifier (UUID).
			uuid?:    string
			version?: string
		}), [...close({
			// Specifies the timestamp the resource was created as an ISO8601
			// string.
			created_at?: string

			// D1 database identifier (UUID).
			id?: string

			// D1 database name.
			name?: string

			// D1 database identifier (UUID).
			uuid?:    string
			version?: string
		})]])

		// a database name to search for.
		name?: string
	})
}
