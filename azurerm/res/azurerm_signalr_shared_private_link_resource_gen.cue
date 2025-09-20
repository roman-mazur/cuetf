package res

#azurerm_signalr_shared_private_link_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_signalr_shared_private_link_resource")
	close({
		timeouts?:           #timeouts
		id?:                 string
		name!:               string
		request_message?:    string
		signalr_service_id!: string
		status?:             string
		sub_resource_name!:  string
		target_resource_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
