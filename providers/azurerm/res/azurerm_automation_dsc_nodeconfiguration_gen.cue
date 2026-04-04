package res

#azurerm_automation_dsc_nodeconfiguration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_automation_dsc_nodeconfiguration")
	close({
		timeouts?:                #timeouts
		automation_account_name!: string
		configuration_name?:      string
		content_embedded!:        string
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
