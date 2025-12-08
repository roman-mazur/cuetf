package res

#azurerm_mssql_virtual_network_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_virtual_network_rule")
	close({
		timeouts?:                             #timeouts
		id?:                                   string
		ignore_missing_vnet_service_endpoint?: bool
		name!:                                 string
		server_id!:                            string
		subnet_id!:                            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
