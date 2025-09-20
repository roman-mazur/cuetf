package res

#azurerm_sentinel_alert_rule_anomaly_duplicate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_sentinel_alert_rule_anomaly_duplicate")
	close({
		anomaly_settings_version?:   number
		anomaly_version?:            string
		built_in_rule_id!:           string
		description?:                string
		display_name!:               string
		enabled!:                    bool
		frequency?:                  string
		id?:                         string
		is_default_settings?:        bool
		log_analytics_workspace_id!: string
		mode!:                       string
		multi_select_observation?: matchN(1, [#multi_select_observation, [...#multi_select_observation]])
		name?: string
		required_data_connector?: [...close({
			connector_id?: string
			data_types?: [...string]
		})]
		prioritized_exclude_observation?: matchN(1, [#prioritized_exclude_observation, [...#prioritized_exclude_observation]])
		settings_definition_id?: string
		single_select_observation?: matchN(1, [#single_select_observation, [...#single_select_observation]])
		threshold_observation?: matchN(1, [#threshold_observation, [...#threshold_observation]])
		timeouts?: #timeouts
		tactics?: [...string]
		techniques?: [...string]
	})

	#multi_select_observation: close({
		description?: string
		name!:        string
		supported_values?: [...string]
		values!: [...string]
	})

	#prioritized_exclude_observation: close({
		description?: string
		exclude?:     string
		name!:        string
		prioritize?:  string
	})

	#single_select_observation: close({
		description?: string
		name!:        string
		supported_values?: [...string]
		value!: string
	})

	#threshold_observation: close({
		description?: string
		max?:         string
		min?:         string
		name!:        string
		value!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
