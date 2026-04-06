package data

#azurerm_iothub_dps: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_iothub_dps")
	close({
		timeouts?:                      #timeouts
		allocation_policy?:             string
		device_provisioning_host_name?: string
		id?:                            string
		id_scope?:                      string
		location?:                      string
		name!:                          string
		resource_group_name!:           string
		service_operations_host_name?:  string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
