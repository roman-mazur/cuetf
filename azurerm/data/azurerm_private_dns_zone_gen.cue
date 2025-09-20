package data

#azurerm_private_dns_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_dns_zone")
	close({
		timeouts?:                                              #timeouts
		id?:                                                    string
		max_number_of_record_sets?:                             number
		max_number_of_virtual_network_links?:                   number
		max_number_of_virtual_network_links_with_registration?: number
		name!:                                                  string
		number_of_record_sets?:                                 number
		resource_group_name?:                                   string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
