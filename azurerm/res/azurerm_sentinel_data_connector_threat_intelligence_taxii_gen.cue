package res

#azurerm_sentinel_data_connector_threat_intelligence_taxii: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_sentinel_data_connector_threat_intelligence_taxii")
	close({
		api_root_url!:               string
		collection_id!:              string
		display_name!:               string
		id?:                         string
		log_analytics_workspace_id!: string
		lookback_date?:              string
		name!:                       string
		password?:                   string
		polling_frequency?:          string
		timeouts?:                   #timeouts
		tenant_id?:                  string
		user_name?:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
