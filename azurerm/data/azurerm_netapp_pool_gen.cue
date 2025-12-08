package data

#azurerm_netapp_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_netapp_pool")
	close({
		account_name!:            string
		cool_access_enabled?:     bool
		custom_throughput_mibps?: number
		encryption_type?:         string
		id?:                      string
		location?:                string
		name!:                    string
		timeouts?:                #timeouts
		resource_group_name!:     string
		service_level?:           string
		size_in_tb?:              number
	})

	#timeouts: close({
		read?: string
	})
}
