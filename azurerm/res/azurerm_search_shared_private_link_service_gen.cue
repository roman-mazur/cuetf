package res

#azurerm_search_shared_private_link_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_search_shared_private_link_service")
	close({
		timeouts?:           #timeouts
		id?:                 string
		name!:               string
		request_message?:    string
		search_service_id!:  string
		status?:             string
		subresource_name!:   string
		target_resource_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
