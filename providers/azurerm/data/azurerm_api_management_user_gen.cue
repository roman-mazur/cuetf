package data

#azurerm_api_management_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_api_management_user")
	close({
		timeouts?:            #timeouts
		api_management_name!: string
		email?:               string
		first_name?:          string
		id?:                  string
		last_name?:           string
		note?:                string
		resource_group_name!: string
		state?:               string
		user_id!:             string
	})

	#timeouts: close({
		read?: string
	})
}
