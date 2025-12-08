package data

#azurerm_virtual_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_virtual_network")
	close({
		address_space?: [...string]
		dns_servers?: [...string]
		guid?:                string
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		subnets?: [...string]
		tags?: [string]: string
		timeouts?: #timeouts
		vnet_peerings?: [string]: string
		vnet_peerings_addresses?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
