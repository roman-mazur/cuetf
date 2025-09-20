package res

#azurerm_automation_job_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_job_schedule")
	close({
		timeouts?:                #timeouts
		automation_account_name!: string
		id?:                      string
		job_schedule_id?:         string
		parameters?: [string]: string
		resource_group_name!: string
		resource_manager_id?: string
		run_on?:              string
		runbook_name!:        string
		schedule_name!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
