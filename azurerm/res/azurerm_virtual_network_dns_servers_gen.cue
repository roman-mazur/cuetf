package res

#azurerm_virtual_network_dns_servers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_network_dns_servers")
	close({
		timeouts?: #timeouts
		dns_servers?: [...string]
		id?:                 string
		virtual_network_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
