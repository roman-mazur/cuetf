package res

import "list"

#azurerm_monitor_scheduled_query_rules_log: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_monitor_scheduled_query_rules_log")
	close({
		authorized_resource_ids?: [...string]
		data_source_id!: string
		description?:    string
		enabled?:        bool
		criteria?: matchN(1, [#criteria, list.MaxItems(1) & [_, ...] & [...#criteria]])
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#criteria: close({
		dimension?: matchN(1, [_#defs."/$defs/criteria/$defs/dimension", [_, ...] & [..._#defs."/$defs/criteria/$defs/dimension"]])
		metric_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/criteria/$defs/dimension": close({
		name!:     string
		operator?: string
		values!: [...string]
	})
}
