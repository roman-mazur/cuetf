package res

#scaleway_datawarehouse_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_datawarehouse_database")
	close({
		// ID of the Datawarehouse deployment to which this database
		// belongs.
		deployment_id!: string
		id?:            string

		// Name of the database.
		name!: string

		// The region you want to attach the resource to
		region?: string

		// Size of the database (in GB).
		size?: number
	})
}
