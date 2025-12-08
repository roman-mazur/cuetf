package data

#azurerm_log_analytics_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_log_analytics_workspace")
	close({
		daily_quota_gb?:       number
		id?:                   string
		location?:             string
		name!:                 string
		primary_shared_key?:   string
		resource_group_name!:  string
		retention_in_days?:    number
		secondary_shared_key?: string
		sku?:                  string
		timeouts?:             #timeouts
		tags?: [string]: string
		workspace_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
