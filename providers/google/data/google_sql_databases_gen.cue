package data

#google_sql_databases: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_sql_databases")
	close({
		databases?: [...close({
			charset?:         string
			collation?:       string
			deletion_policy?: string
			instance?:        string
			name?:            string
			project?:         string
			self_link?:       string
		})]
		id?: string

		// The name of the Cloud SQL database instance in which the
		// database belongs.
		instance!: string

		// Project ID of the project that contains the instance.
		project?: string
	})
}
