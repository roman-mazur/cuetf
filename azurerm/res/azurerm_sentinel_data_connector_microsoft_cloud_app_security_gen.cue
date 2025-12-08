package res

#azurerm_sentinel_data_connector_microsoft_cloud_app_security: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_sentinel_data_connector_microsoft_cloud_app_security")
	close({
		timeouts?:                   #timeouts
		alerts_enabled?:             bool
		discovery_logs_enabled?:     bool
		id?:                         string
		log_analytics_workspace_id!: string
		name!:                       string
		tenant_id?:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
