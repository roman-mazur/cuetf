package data

scaleway_sdb_sql_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_sdb_sql_versions")
	close({
		id?: string

		// Filter Serverless SQL Database versions that match a given name pattern (e.g. `16`).
		name?: string

		// The region you want to attach the resource to
		region?: string

		// List of available Serverless SQL Database versions.
		versions?: [...close({
			end_of_life_at?: string
			name?:           string
			srn?:            string
		})]
	})
}
