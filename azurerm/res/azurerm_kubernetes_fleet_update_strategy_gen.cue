package res

#azurerm_kubernetes_fleet_update_strategy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_kubernetes_fleet_update_strategy")
	close({
		stage!: matchN(1, [#stage, [_, ...] & [...#stage]])
		timeouts?:                    #timeouts
		id?:                          string
		kubernetes_fleet_manager_id!: string
		name!:                        string
	})

	#stage: close({
		group!: matchN(1, [_#defs."/$defs/stage/$defs/group", [_, ...] & [..._#defs."/$defs/stage/$defs/group"]])
		after_stage_wait_in_seconds?: number
		name!:                        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/stage/$defs/group": close({
		name!: string
	})
}
