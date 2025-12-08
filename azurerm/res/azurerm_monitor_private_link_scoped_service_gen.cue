package res

#azurerm_monitor_private_link_scoped_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_monitor_private_link_scoped_service")
	close({
		timeouts?:            #timeouts
		id?:                  string
		linked_resource_id!:  string
		name!:                string
		resource_group_name!: string
		scope_name!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
