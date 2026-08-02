package res

azurerm_monitor_diagnostic_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_monitor_diagnostic_setting")
	close({
		enabled_log?: matchN(1, [#enabled_log, [...#enabled_log]])
		enabled_metric?: matchN(1, [#enabled_metric, [...#enabled_metric]])
		timeouts?:                       #timeouts
		eventhub_authorization_rule_id?: string
		eventhub_name?:                  string
		id?:                             string
		log_analytics_destination_type?: string
		log_analytics_workspace_id?:     string
		name!:                           string
		partner_solution_id?:            string
		storage_account_id?:             string
		target_resource_id!:             string
	})

	#enabled_log: close({
		category?:       string
		category_group?: string
	})

	#enabled_metric: close({
		category!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
