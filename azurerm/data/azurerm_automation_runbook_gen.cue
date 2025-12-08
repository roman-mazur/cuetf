package data

#azurerm_automation_runbook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_automation_runbook")
	close({
		automation_account_name!:  string
		content?:                  string
		description?:              string
		id?:                       string
		location?:                 string
		log_activity_trace_level?: number
		log_progress?:             bool
		log_verbose?:              bool
		timeouts?:                 #timeouts
		name!:                     string
		resource_group_name!:      string
		runbook_type?:             string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
