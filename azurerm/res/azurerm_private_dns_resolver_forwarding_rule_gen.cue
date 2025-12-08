package res

#azurerm_private_dns_resolver_forwarding_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_private_dns_resolver_forwarding_rule")
	close({
		target_dns_servers!: matchN(1, [#target_dns_servers, [_, ...] & [...#target_dns_servers]])
		dns_forwarding_ruleset_id!: string
		domain_name!:               string
		enabled?:                   bool
		id?:                        string
		metadata?: [string]: string
		name!:     string
		timeouts?: #timeouts
	})

	#target_dns_servers: close({
		ip_address!: string
		port?:       number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
