package res

#azurerm_automation_hybrid_runbook_worker: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_automation_hybrid_runbook_worker")
	close({
		automation_account_name!: string
		id?:                      string
		ip?:                      string
		last_seen_date_time?:     string
		registration_date_time?:  string
		resource_group_name!:     string
		vm_resource_id!:          string
		worker_group_name!:       string
		worker_id!:               string
		timeouts?:                #timeouts
		worker_name?:             string
		worker_type?:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
