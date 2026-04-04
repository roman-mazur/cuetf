package res

#azurerm_network_manager_ipam_pool_static_cidr: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_manager_ipam_pool_static_cidr")
	close({
		timeouts?: #timeouts
		address_prefixes?: [...string]
		id?:                                 string
		ipam_pool_id!:                       string
		name!:                               string
		number_of_ip_addresses_to_allocate?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
