package res

#azurerm_sentinel_alert_rule_fusion: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_sentinel_alert_rule_fusion")
	close({
		source?: matchN(1, [#source, [...#source]])
		alert_rule_template_guid!:   string
		enabled?:                    bool
		id?:                         string
		log_analytics_workspace_id!: string
		timeouts?:                   #timeouts
	})

	#source: close({
		sub_type?: matchN(1, [_#defs."/$defs/source/$defs/sub_type", [..._#defs."/$defs/source/$defs/sub_type"]])
		enabled?: bool
		name!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/source/$defs/sub_type": close({
		enabled?: bool
		name!:    string
		severities_allowed!: [...string]
	})
}
