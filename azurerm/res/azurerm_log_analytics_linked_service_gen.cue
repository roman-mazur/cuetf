package res

#azurerm_log_analytics_linked_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_log_analytics_linked_service")
	close({
		timeouts?:            #timeouts
		id?:                  string
		name?:                string
		read_access_id?:      string
		resource_group_name!: string
		workspace_id!:        string
		write_access_id?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
