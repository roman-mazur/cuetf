package res

#azurerm_iothub_dps_shared_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iothub_dps_shared_access_policy")
	close({
		enrollment_read?:             bool
		enrollment_write?:            bool
		id?:                          string
		iothub_dps_name!:             string
		name!:                        string
		primary_connection_string?:   string
		primary_key?:                 string
		registration_read?:           bool
		timeouts?:                    #timeouts
		registration_write?:          bool
		resource_group_name!:         string
		secondary_connection_string?: string
		secondary_key?:               string
		service_config?:              bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
