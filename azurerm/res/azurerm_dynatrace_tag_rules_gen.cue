package res

import "list"

#azurerm_dynatrace_tag_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dynatrace_tag_rules")
	close({
		log_rule?: matchN(1, [#log_rule, list.MaxItems(1) & [...#log_rule]])
		metric_rule?: matchN(1, [#metric_rule, list.MaxItems(1) & [...#metric_rule]])
		timeouts?:   #timeouts
		id?:         string
		monitor_id!: string
		name!:       string
	})

	#log_rule: close({
		filtering_tag?: matchN(1, [_#defs."/$defs/log_rule/$defs/filtering_tag", [_, ...] & [..._#defs."/$defs/log_rule/$defs/filtering_tag"]])
		send_activity_logs_enabled?:               bool
		send_azure_active_directory_logs_enabled?: bool
		send_subscription_logs_enabled?:           bool
	})

	#metric_rule: close({
		filtering_tag?: matchN(1, [_#defs."/$defs/metric_rule/$defs/filtering_tag", [_, ...] & [..._#defs."/$defs/metric_rule/$defs/filtering_tag"]])
		sending_metrics_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/log_rule/$defs/filtering_tag": close({
		action!: string
		name!:   string
		value!:  string
	})

	_#defs: "/$defs/metric_rule/$defs/filtering_tag": close({
		action!: string
		name!:   string
		value!:  string
	})
}
