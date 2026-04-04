package res

#azurerm_application_insights_api_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_application_insights_api_key")
	close({
		timeouts?:                #timeouts
		api_key?:                 string
		application_insights_id!: string
		id?:                      string
		name!:                    string
		read_permissions?: [...string]
		write_permissions?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
