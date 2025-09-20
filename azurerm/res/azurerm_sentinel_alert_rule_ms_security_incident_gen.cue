package res

#azurerm_sentinel_alert_rule_ms_security_incident: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_sentinel_alert_rule_ms_security_incident")
	close({
		alert_rule_template_guid?: string
		description?:              string
		display_name!:             string
		display_name_exclude_filter?: [...string]
		display_name_filter?: [...string]
		enabled?:                    bool
		id?:                         string
		log_analytics_workspace_id!: string
		name!:                       string
		timeouts?:                   #timeouts
		product_filter!:             string
		severity_filter!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
