package data

#azurerm_private_dns_resolver_inbound_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_private_dns_resolver_inbound_endpoint")
	close({
		timeouts?: #timeouts
		id?:       string
		ip_configurations?: [...close({
			private_ip_address?:           string
			private_ip_allocation_method?: string
			subnet_id?:                    string
		})]
		location?:                string
		name!:                    string
		private_dns_resolver_id!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
