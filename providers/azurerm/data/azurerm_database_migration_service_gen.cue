package data

#azurerm_database_migration_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_database_migration_service")
	close({
		timeouts?:            #timeouts
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		sku_name?:            string
		subnet_id?:           string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
