package res

#azurerm_security_center_automation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_security_center_automation")
	close({
		description?: string
		enabled?:     bool
		id?:          string
		location!:    string
		action!: matchN(1, [#action, [_, ...] & [...#action]])
		name!:                string
		resource_group_name!: string
		scopes!: [...string]
		tags?: [string]: string
		source!: matchN(1, [#source, [_, ...] & [...#source]])
		timeouts?: #timeouts
	})

	#action: close({
		connection_string?: string
		resource_id!:       string
		trigger_url?:       string
		type?:              string
	})

	#source: close({
		rule_set?: matchN(1, [_#defs."/$defs/source/$defs/rule_set", [..._#defs."/$defs/source/$defs/rule_set"]])
		event_source!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/source/$defs/rule_set": close({
		rule!: matchN(1, [_#defs."/$defs/source/$defs/rule_set/$defs/rule", [_, ...] & [..._#defs."/$defs/source/$defs/rule_set/$defs/rule"]])
	})

	_#defs: "/$defs/source/$defs/rule_set/$defs/rule": close({
		expected_value!: string
		operator!:       string
		property_path!:  string
		property_type!:  string
	})
}
