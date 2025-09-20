package res

#azurerm_log_analytics_data_export_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_log_analytics_data_export_rule")
	close({
		timeouts?:                #timeouts
		destination_resource_id!: string
		enabled?:                 bool
		export_rule_id?:          string
		id?:                      string
		name!:                    string
		resource_group_name!:     string
		table_names!: [...string]
		workspace_resource_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
