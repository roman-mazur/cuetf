package res

#azurerm_netapp_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_netapp_pool")
	close({
		account_name!:            string
		cool_access_enabled?:     bool
		custom_throughput_mibps?: number
		encryption_type?:         string
		id?:                      string
		location!:                string
		name!:                    string
		qos_type?:                string
		timeouts?:                #timeouts
		resource_group_name!:     string
		service_level!:           string
		size_in_tb!:              number
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
