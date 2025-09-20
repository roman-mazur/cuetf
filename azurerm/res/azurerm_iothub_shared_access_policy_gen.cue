package res

#azurerm_iothub_shared_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_iothub_shared_access_policy")
	close({
		device_connect?:              bool
		id?:                          string
		iothub_name!:                 string
		name!:                        string
		primary_connection_string?:   string
		primary_key?:                 string
		registry_read?:               bool
		registry_write?:              bool
		timeouts?:                    #timeouts
		resource_group_name!:         string
		secondary_connection_string?: string
		secondary_key?:               string
		service_connect?:             bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
