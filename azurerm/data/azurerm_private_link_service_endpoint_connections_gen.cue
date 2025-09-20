package data

#azurerm_private_link_service_endpoint_connections: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_link_service_endpoint_connections")
	close({
		timeouts?: #timeouts
		id?:       string
		location?: string
		private_endpoint_connections?: [...close({
			action_required?:       string
			connection_id?:         string
			connection_name?:       string
			description?:           string
			private_endpoint_id?:   string
			private_endpoint_name?: string
			status?:                string
		})]
		resource_group_name!: string
		service_id!:          string
		service_name?:        string
	})

	#timeouts: close({
		read?: string
	})
}
