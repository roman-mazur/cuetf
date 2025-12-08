package res

#azurerm_sentinel_alert_rule_threat_intelligence: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_sentinel_alert_rule_threat_intelligence")
	close({
		timeouts?:                   #timeouts
		alert_rule_template_guid!:   string
		enabled?:                    bool
		id?:                         string
		log_analytics_workspace_id!: string
		name!:                       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
