package res

#azurerm_sentinel_data_connector_office_365_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_sentinel_data_connector_office_365_project")
	close({
		timeouts?:                   #timeouts
		id?:                         string
		log_analytics_workspace_id!: string
		name!:                       string
		tenant_id?:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
