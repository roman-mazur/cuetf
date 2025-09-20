package data

#azurerm_private_dns_resolver_virtual_network_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_dns_resolver_virtual_network_link")
	close({
		timeouts?:                  #timeouts
		dns_forwarding_ruleset_id!: string
		id?:                        string
		metadata?: [string]: string
		name!:               string
		virtual_network_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
