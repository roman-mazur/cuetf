package data

#azurerm_monitor_scheduled_query_rules_log: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_monitor_scheduled_query_rules_log")
	close({
		authorized_resource_ids?: [...string]
		criteria?: [...close({
			dimension?: [...close({
				name?:     string
				operator?: string
				values?: [...string]
			})]
			metric_name?: string
		})]
		data_source_id?:      string
		description?:         string
		enabled?:             bool
		id?:                  string
		location?:            string
		timeouts?:            #timeouts
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
