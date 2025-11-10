package res

import "list"

#azurerm_monitor_smart_detector_alert_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_monitor_smart_detector_alert_rule")
	close({
		description?:   string
		detector_type!: string
		enabled?:       bool
		frequency!:     string
		id?:            string
		name!:          string
		action_group!: matchN(1, [#action_group, list.MaxItems(1) & [_, ...] & [...#action_group]])
		resource_group_name!: string
		scope_resource_ids!: [...string]
		timeouts?: #timeouts
		severity!: string
		tags?: [string]: string
		throttling_duration?: string
	})

	#action_group: close({
		email_subject?: string
		ids!: [...string]
		webhook_payload?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
