package res

import "list"

#azurerm_network_watcher_flow_log: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_watcher_flow_log")
	close({
		enabled!:              bool
		id?:                   string
		location?:             string
		name!:                 string
		network_watcher_name!: string
		resource_group_name!:  string
		retention_policy!: matchN(1, [#retention_policy, list.MaxItems(1) & [_, ...] & [...#retention_policy]])
		storage_account_id!: string
		timeouts?:           #timeouts
		traffic_analytics?: matchN(1, [#traffic_analytics, list.MaxItems(1) & [...#traffic_analytics]])
		tags?: [string]: string
		target_resource_id?: string
		version?:            number
	})

	#retention_policy: close({
		days!:    number
		enabled!: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#traffic_analytics: close({
		enabled!:               bool
		interval_in_minutes?:   number
		workspace_id!:          string
		workspace_region!:      string
		workspace_resource_id!: string
	})
}
