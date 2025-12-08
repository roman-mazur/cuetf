package res

#azurerm_sentinel_data_connector_office_365: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_sentinel_data_connector_office_365")
	close({
		timeouts?:                   #timeouts
		exchange_enabled?:           bool
		id?:                         string
		log_analytics_workspace_id!: string
		name!:                       string
		sharepoint_enabled?:         bool
		teams_enabled?:              bool
		tenant_id?:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
