package res

#azurerm_automation_runtime_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_automation_runtime_environment")
	close({
		timeouts?:              #timeouts
		automation_account_id!: string
		description?:           string
		id?:                    string
		location!:              string
		name!:                  string
		runtime_default_packages?: [string]: string
		runtime_language!: string
		runtime_version!:  string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
