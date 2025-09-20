package res

#azurerm_datadog_monitor_tag_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_datadog_monitor_tag_rule")
	close({
		log?: matchN(1, [#log, [...#log]])
		metric?: matchN(1, [#metric, [...#metric]])
		timeouts?:           #timeouts
		datadog_monitor_id!: string
		id?:                 string
		name?:               string
	})

	#log: close({
		filter?: matchN(1, [_#defs."/$defs/log/$defs/filter", [..._#defs."/$defs/log/$defs/filter"]])
		aad_log_enabled?:          bool
		resource_log_enabled?:     bool
		subscription_log_enabled?: bool
	})

	#metric: close({
		filter?: matchN(1, [_#defs."/$defs/metric/$defs/filter", [..._#defs."/$defs/metric/$defs/filter"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/log/$defs/filter": close({
		action!: string
		name!:   string
		value!:  string
	})

	_#defs: "/$defs/metric/$defs/filter": close({
		action!: string
		name!:   string
		value!:  string
	})
}
