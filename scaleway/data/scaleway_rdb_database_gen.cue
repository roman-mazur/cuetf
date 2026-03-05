package data

#scaleway_rdb_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_rdb_database")
	close({
		id?: string

		// Instance on which the database is created
		instance_id!: string

		// Whether or not the database is managed
		managed?: bool

		// Database name
		name!: string

		// User that own the database
		owner?: string

		// The region you want to attach the resource to
		region?: string

		// Size of the database
		size?: string
	})
}
