package res

import "list"

#azurerm_frontdoor_rules_engine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_frontdoor_rules_engine")
	close({
		rule?: matchN(1, [#rule, list.MaxItems(100) & [...#rule]])
		enabled?:             bool
		frontdoor_name!:      string
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		timeouts?:            #timeouts
	})

	#rule: close({
		action?: matchN(1, [_#defs."/$defs/rule/$defs/action", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/action"]])
		match_condition?: matchN(1, [_#defs."/$defs/rule/$defs/match_condition", list.MaxItems(100) & [..._#defs."/$defs/rule/$defs/match_condition"]])
		name!:     string
		priority!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/rule/$defs/action": close({
		request_header?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/request_header", list.MaxItems(100) & [..._#defs."/$defs/rule/$defs/action/$defs/request_header"]])
		response_header?: matchN(1, [_#defs."/$defs/rule/$defs/action/$defs/response_header", list.MaxItems(100) & [..._#defs."/$defs/rule/$defs/action/$defs/response_header"]])
	})

	_#defs: "/$defs/rule/$defs/action/$defs/request_header": close({
		header_action_type?: string
		header_name?:        string
		value?:              string
	})

	_#defs: "/$defs/rule/$defs/action/$defs/response_header": close({
		header_action_type?: string
		header_name?:        string
		value?:              string
	})

	_#defs: "/$defs/rule/$defs/match_condition": close({
		negate_condition?: bool
		operator!:         string
		selector?:         string
		transform?: [...string]
		value?: [...string]
		variable?: string
	})
}
