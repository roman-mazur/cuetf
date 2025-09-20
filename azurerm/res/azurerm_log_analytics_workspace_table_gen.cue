package res

#azurerm_log_analytics_workspace_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_log_analytics_workspace_table")
	close({
		timeouts?:                #timeouts
		id?:                      string
		name!:                    string
		plan?:                    string
		retention_in_days?:       number
		total_retention_in_days?: number
		workspace_id!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
