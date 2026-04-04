package res

#azurerm_automation_hybrid_runbook_worker_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_automation_hybrid_runbook_worker_group")
	close({
		timeouts?:                #timeouts
		automation_account_name!: string
		credential_name?:         string
		id?:                      string
		name!:                    string
		resource_group_name!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
