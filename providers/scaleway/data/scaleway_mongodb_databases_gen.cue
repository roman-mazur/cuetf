package data

#scaleway_mongodb_databases: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_mongodb_databases")
	close({
		// List of databases on the MongoDB instance.
		databases?: [...close({
			name?: string
		})]
		id?: string

		// MongoDB instance ID. Can be a plain UUID or a regional ID.
		instance_id!: string

		// The region you want to attach the resource to
		region?: string
	})
}
