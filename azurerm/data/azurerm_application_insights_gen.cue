package data

#azurerm_application_insights: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_application_insights")
	close({
		app_id?:              string
		application_type?:    string
		connection_string?:   string
		id?:                  string
		instrumentation_key?: string
		location?:            string
		name!:                string
		resource_group_name!: string
		retention_in_days?:   number
		timeouts?:            #timeouts
		tags?: [string]: string
		workspace_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
