package data

#azurerm_communication_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_communication_service")
	close({
		data_location?:               string
		hostname?:                    string
		id?:                          string
		immutable_resource_id?:       string
		name!:                        string
		primary_connection_string?:   string
		primary_key?:                 string
		resource_group_name!:         string
		secondary_connection_string?: string
		timeouts?:                    #timeouts
		secondary_key?:               string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
