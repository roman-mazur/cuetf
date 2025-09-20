package data

#azurerm_monitor_scheduled_query_rules_alert: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_monitor_scheduled_query_rules_alert")
	close({
		action?: [...close({
			action_group?: [...string]
			custom_webhook_payload?: string
			email_subject?:          string
		})]
		authorized_resource_ids?: [...string]
		data_source_id?:      string
		description?:         string
		enabled?:             bool
		frequency?:           number
		id?:                  string
		location?:            string
		name!:                string
		query?:               string
		query_type?:          string
		resource_group_name!: string
		timeouts?:            #timeouts
		severity?:            number
		tags?: [string]: string
		throttling?:  number
		time_window?: number
		trigger?: [...close({
			metric_trigger?: [...close({
				metric_column?:       string
				metric_trigger_type?: string
				operator?:            string
				threshold?:           number
			})]
			operator?:  string
			threshold?: number
		})]
	})

	#timeouts: close({
		read?: string
	})
}
