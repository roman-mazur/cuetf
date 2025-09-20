package res

#azurerm_api_management_openid_connect_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_openid_connect_provider")
	close({
		timeouts?:            #timeouts
		api_management_name!: string
		client_id!:           string
		client_secret!:       string
		description?:         string
		display_name!:        string
		id?:                  string
		metadata_endpoint!:   string
		name!:                string
		resource_group_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
