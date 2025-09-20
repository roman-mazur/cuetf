package res

#azurerm_private_dns_resolver_dns_forwarding_ruleset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_dns_resolver_dns_forwarding_ruleset")
	close({
		timeouts?: #timeouts
		id?:       string
		location!: string
		name!:     string
		private_dns_resolver_outbound_endpoint_ids!: [...string]
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
