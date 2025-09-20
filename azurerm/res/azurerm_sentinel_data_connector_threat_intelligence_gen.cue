package res

#azurerm_sentinel_data_connector_threat_intelligence: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_sentinel_data_connector_threat_intelligence")
	close({
		timeouts?:                   #timeouts
		id?:                         string
		log_analytics_workspace_id!: string
		lookback_date?:              string
		name!:                       string
		tenant_id?:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
