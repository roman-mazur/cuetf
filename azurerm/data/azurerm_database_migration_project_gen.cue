package data

#azurerm_database_migration_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_database_migration_project")
	close({
		timeouts?:            #timeouts
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		service_name!:        string
		source_platform?:     string
		tags?: [string]: string
		target_platform?: string
	})

	#timeouts: close({
		read?: string
	})
}
