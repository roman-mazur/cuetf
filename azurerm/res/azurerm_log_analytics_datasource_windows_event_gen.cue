package res

#azurerm_log_analytics_datasource_windows_event: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_log_analytics_datasource_windows_event")
	close({
		timeouts?:       #timeouts
		event_log_name!: string
		event_types!: [...string]
		id?:                  string
		name!:                string
		resource_group_name!: string
		workspace_name!:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
