package res

#azurerm_automation_watcher: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_watcher")
	close({
		automation_account_id!:          string
		description?:                    string
		etag?:                           string
		execution_frequency_in_seconds!: number
		id?:                             string
		location!:                       string
		name!:                           string
		script_name!:                    string
		timeouts?:                       #timeouts
		script_parameters?: [string]: string
		script_run_on!: string
		status?:        string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
