package res

#azurerm_new_relic_tag_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_new_relic_tag_rule")
	close({
		log_tag_filter?: matchN(1, [#log_tag_filter, [...#log_tag_filter]])
		activity_log_enabled?:               bool
		azure_active_directory_log_enabled?: bool
		id?:                                 string
		metric_enabled?:                     bool
		monitor_id!:                         string
		subscription_log_enabled?:           bool
		metric_tag_filter?: matchN(1, [#metric_tag_filter, [...#metric_tag_filter]])
		timeouts?: #timeouts
	})

	#log_tag_filter: close({
		action!: string
		name!:   string
		value!:  string
	})

	#metric_tag_filter: close({
		action!: string
		name!:   string
		value!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
