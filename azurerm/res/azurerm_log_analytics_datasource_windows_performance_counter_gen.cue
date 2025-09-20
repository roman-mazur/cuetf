package res

#azurerm_log_analytics_datasource_windows_performance_counter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_log_analytics_datasource_windows_performance_counter")
	close({
		timeouts?:            #timeouts
		counter_name!:        string
		id?:                  string
		instance_name!:       string
		interval_seconds!:    number
		name!:                string
		object_name!:         string
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
