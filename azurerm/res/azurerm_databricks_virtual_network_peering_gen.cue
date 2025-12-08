package res

#azurerm_databricks_virtual_network_peering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_databricks_virtual_network_peering")
	close({
		address_space_prefixes?: [...string]
		allow_forwarded_traffic?:      bool
		allow_gateway_transit?:        bool
		allow_virtual_network_access?: bool
		id?:                           string
		name!:                         string
		remote_address_space_prefixes!: [...string]
		remote_virtual_network_id!: string
		timeouts?:                  #timeouts
		resource_group_name!:       string
		use_remote_gateways?:       bool
		virtual_network_id?:        string
		workspace_id!:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
