package res

#azurerm_api_management_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_user")
	close({
		api_management_name!: string
		confirmation?:        string
		email!:               string
		first_name!:          string
		id?:                  string
		last_name!:           string
		note?:                string
		password?:            string
		resource_group_name!: string
		timeouts?:            #timeouts
		state?:               string
		user_id!:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
