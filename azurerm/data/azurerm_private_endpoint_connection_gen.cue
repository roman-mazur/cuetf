package data

#azurerm_private_endpoint_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_endpoint_connection")
	close({
		timeouts?: #timeouts
		id?:       string
		location?: string
		name!:     string
		network_interface?: [...close({
			id?:   string
			name?: string
		})]
		private_service_connection?: [...close({
			name?:               string
			private_ip_address?: string
			request_response?:   string
			status?:             string
		})]
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
