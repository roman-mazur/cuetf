package data

scaleway_rdb_database_engines: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_rdb_database_engines")
	close({
		// List of available database engines.
		engines?: [...close({
			logo_url?: string
			name?:     string
			region?:   string
			versions?: [...close({
				beta?:        bool
				disabled?:    bool
				end_of_life?: string
				name?:        string
				version?:     string
			})]
		})]
		id?: string

		// Filter by database engine name (e.g. PostgreSQL, MySQL).
		name?: string

		// The region you want to attach the resource to
		region?: string

		// Filter by database engine version (e.g. 16).
		version?: string
	})
}
