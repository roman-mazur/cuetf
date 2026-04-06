package res

#azurerm_api_management_identity_provider_twitter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_identity_provider_twitter")
	close({
		timeouts?:            #timeouts
		api_key!:             string
		api_management_name!: string
		api_secret_key!:      string
		id?:                  string
		resource_group_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
