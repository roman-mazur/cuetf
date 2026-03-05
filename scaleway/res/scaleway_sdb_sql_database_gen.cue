package res

#scaleway_sdb_sql_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_sdb_sql_database")
	close({
		// endpoint of the database
		endpoint?: string

		// The maximum number of CPU units for your Serverless SQL
		// Database
		max_cpu?:  number
		timeouts?: #timeouts
		id?:       string

		// The minimum number of CPU units for your Serverless SQL
		// Database
		min_cpu?: number

		// The database name
		name!: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
