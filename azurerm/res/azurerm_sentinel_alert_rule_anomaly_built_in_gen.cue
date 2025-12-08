package res

#azurerm_sentinel_alert_rule_anomaly_built_in: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_sentinel_alert_rule_anomaly_built_in")
	close({
		anomaly_settings_version?:   number
		anomaly_version?:            string
		description?:                string
		display_name?:               string
		enabled!:                    bool
		frequency?:                  string
		id?:                         string
		log_analytics_workspace_id!: string
		mode!:                       string
		multi_select_observation?: [...close({
			description?: string
			name?:        string
			supported_values?: [...string]
			values?: [...string]
		})]
		name?: string
		prioritized_exclude_observation?: [...close({
			description?: string
			exclude?:     string
			name?:        string
			prioritize?:  string
		})]
		required_data_connector?: [...close({
			connector_id?: string
			data_types?: [...string]
		})]
		settings_definition_id?: string
		single_select_observation?: [...close({
			description?: string
			name?:        string
			supported_values?: [...string]
			value?: string
		})]
		timeouts?: #timeouts
		tactics?: [...string]
		techniques?: [...string]
		threshold_observation?: [...close({
			description?: string
			max?:         string
			min?:         string
			name?:        string
			value?:       string
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
