package data

#azurerm_sentinel_alert_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_sentinel_alert_rule")
	close({
		timeouts?:                   #timeouts
		id?:                         string
		log_analytics_workspace_id!: string
		name!:                       string
	})

	#timeouts: close({
		read?: string
	})
}
