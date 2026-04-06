package res

#azurerm_sentinel_automation_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_sentinel_automation_rule")
	close({
		action_incident?: matchN(1, [#action_incident, [...#action_incident]])
		action_incident_task?: matchN(1, [#action_incident_task, [...#action_incident_task]])
		action_playbook?: matchN(1, [#action_playbook, [...#action_playbook]])
		timeouts?:                   #timeouts
		condition_json?:             string
		display_name!:               string
		enabled?:                    bool
		expiration?:                 string
		id?:                         string
		log_analytics_workspace_id!: string
		name!:                       string
		order!:                      number
		triggers_on?:                string
		triggers_when?:              string
	})

	#action_incident: close({
		classification?:         string
		classification_comment?: string
		labels?: [...string]
		order!:    number
		owner_id?: string
		severity?: string
		status?:   string
	})

	#action_incident_task: close({
		description?: string
		order!:       number
		title!:       string
	})

	#action_playbook: close({
		logic_app_id!: string
		order!:        number
		tenant_id?:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
