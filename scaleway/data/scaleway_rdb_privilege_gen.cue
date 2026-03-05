package data

#scaleway_rdb_privilege: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_rdb_privilege")
	close({
		// Database name
		database_name!: string
		id?:            string

		// Instance on which the database is created
		instance_id!: string

		// Privilege
		permission?: string

		// The region you want to attach the resource to
		region?: string

		// User name
		user_name!: string
	})
}
