package data

#azurerm_subnet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_subnet")
	close({
		address_prefix?: string
		address_prefixes?: [...string]
		default_outbound_access_enabled?:               bool
		id?:                                            string
		name!:                                          string
		network_security_group_id?:                     string
		private_endpoint_network_policies?:             string
		private_link_service_network_policies_enabled?: bool
		timeouts?:                                      #timeouts
		resource_group_name!:                           string
		route_table_id?:                                string
		service_endpoints?: [...string]
		virtual_network_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
