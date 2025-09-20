package data

#azurerm_private_dns_resolver: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_dns_resolver")
	close({
		timeouts?:            #timeouts
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		virtual_network_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
