package res

#azurerm_automation_credential: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_credential")
	close({
		timeouts?:                #timeouts
		automation_account_name!: string
		description?:             string
		id?:                      string
		name!:                    string
		password!:                string
		resource_group_name!:     string
		username!:                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
