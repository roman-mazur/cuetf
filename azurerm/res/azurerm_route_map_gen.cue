package res

#azurerm_route_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_route_map")
	close({
		rule?: matchN(1, [#rule, [...#rule]])
		timeouts?:       #timeouts
		id?:             string
		name!:           string
		virtual_hub_id!: string
	})

	#rule: close({
		action?: matchN(1, [_#defs."/$defs/rule/$defs/action", [..._#defs."/$defs/rule/$defs/action"]])
		match_criterion?: matchN(1, [_#defs."/$defs/rule/$defs/match_criterion", [..._#defs."/$defs/rule/$defs/match_criterion"]])
		name!:                 string
		next_step_if_matched?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/rule/$defs/action": close({
		parameter?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/parameter", [..._#defs."/$defs/rule/$defs/action/$defs/parameter"]])
		type!: string
	})

	_#defs: "/$defs/rule/$defs/action/$defs/parameter": close({
		as_path?: [...string]
		community?: [...string]
		route_prefix?: [...string]
	})

	_#defs: "/$defs/rule/$defs/match_criterion": close({
		as_path?: [...string]
		community?: [...string]
		match_condition!: string
		route_prefix?: [...string]
	})
}
