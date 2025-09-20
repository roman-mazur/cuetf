package res

#azurerm_automation_dsc_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_dsc_configuration")
	close({
		automation_account_name!: string
		content_embedded!:        string
		description?:             string
		id?:                      string
		location!:                string
		log_verbose?:             bool
		name!:                    string
		timeouts?:                #timeouts
		resource_group_name!:     string
		state?:                   string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
