package res

#azurerm_automation_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_webhook")
	close({
		automation_account_name!: string
		enabled?:                 bool
		expiry_time!:             string
		id?:                      string
		name!:                    string
		parameters?: [string]: string
		resource_group_name!: string
		timeouts?:            #timeouts
		run_on_worker_group?: string
		runbook_name!:        string
		uri?:                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
