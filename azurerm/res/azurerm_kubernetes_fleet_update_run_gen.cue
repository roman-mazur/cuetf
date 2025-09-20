package res

import "list"

#azurerm_kubernetes_fleet_update_run: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kubernetes_fleet_update_run")
	close({
		managed_cluster_update?: matchN(1, [#managed_cluster_update, list.MaxItems(1) & [_, ...] & [...#managed_cluster_update]])
		fleet_update_strategy_id?:    string
		id?:                          string
		kubernetes_fleet_manager_id!: string
		name!:                        string
		stage?: matchN(1, [#stage, [...#stage]])
		timeouts?: #timeouts
	})

	#managed_cluster_update: close({
		node_image_selection?: matchN(1, [_#defs."/$defs/managed_cluster_update/$defs/node_image_selection", list.MaxItems(1) & [..._#defs."/$defs/managed_cluster_update/$defs/node_image_selection"]])
		upgrade?: matchN(1, [_#defs."/$defs/managed_cluster_update/$defs/upgrade", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/managed_cluster_update/$defs/upgrade"]])
	})

	#stage: close({
		group?: matchN(1, [_#defs."/$defs/stage/$defs/group", [_, ...] & [..._#defs."/$defs/stage/$defs/group"]])
		after_stage_wait_in_seconds?: number
		name!:                        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/managed_cluster_update/$defs/node_image_selection": close({
		type!: string
	})

	_#defs: "/$defs/managed_cluster_update/$defs/upgrade": close({
		kubernetes_version?: string
		type!:               string
	})

	_#defs: "/$defs/stage/$defs/group": close({
		name!: string
	})
}
