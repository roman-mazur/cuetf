package res

#azurerm_postgresql_active_directory_administrator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_postgresql_active_directory_administrator")
	close({
		timeouts?:            #timeouts
		id?:                  string
		login!:               string
		object_id!:           string
		resource_group_name!: string
		server_name!:         string
		tenant_id!:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
