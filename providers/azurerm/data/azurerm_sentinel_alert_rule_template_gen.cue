package data

#azurerm_sentinel_alert_rule_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_sentinel_alert_rule_template")
	close({
		timeouts?:                   #timeouts
		display_name?:               string
		id?:                         string
		log_analytics_workspace_id!: string
		name?:                       string
		nrt_template?: [...close({
			description?: string
			query?:       string
			severity?:    string
			tactics?: [...string]
		})]
		scheduled_template?: [...close({
			description?:     string
			query?:           string
			query_frequency?: string
			query_period?:    string
			severity?:        string
			tactics?: [...string]
			trigger_operator?:  string
			trigger_threshold?: number
		})]
		security_incident_template?: [...close({
			description?:    string
			product_filter?: string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
