package data

#azurerm_automation_variable_datetime: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_variable_datetime")
	close({
		timeouts?:                #timeouts
		automation_account_name!: string
		description?:             string
		encrypted?:               bool
		id?:                      string
		name!:                    string
		resource_group_name!:     string
		value?:                   string
	})

	#timeouts: close({
		read?: string
	})
}
