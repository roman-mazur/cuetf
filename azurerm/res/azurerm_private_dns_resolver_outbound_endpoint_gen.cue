package res

#azurerm_private_dns_resolver_outbound_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_dns_resolver_outbound_endpoint")
	close({
		timeouts?:                #timeouts
		id?:                      string
		location!:                string
		name!:                    string
		private_dns_resolver_id!: string
		subnet_id!:               string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
