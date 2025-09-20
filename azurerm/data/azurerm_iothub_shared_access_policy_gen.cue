package data

#azurerm_iothub_shared_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_iothub_shared_access_policy")
	close({
		timeouts?:                    #timeouts
		id?:                          string
		iothub_name!:                 string
		name!:                        string
		primary_connection_string?:   string
		primary_key?:                 string
		resource_group_name!:         string
		secondary_connection_string?: string
		secondary_key?:               string
	})

	#timeouts: close({
		read?: string
	})
}
