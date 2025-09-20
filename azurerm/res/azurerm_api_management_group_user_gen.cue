package res

#azurerm_api_management_group_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_group_user")
	close({
		timeouts?:            #timeouts
		api_management_name!: string
		group_name!:          string
		id?:                  string
		resource_group_name!: string
		user_id!:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
