package res

#azurerm_automation_variable_int: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_automation_variable_int")
	close({
		timeouts?:                #timeouts
		automation_account_name!: string
		description?:             string
		encrypted?:               bool
		id?:                      string
		name!:                    string
		resource_group_name!:     string
		value?:                   number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
