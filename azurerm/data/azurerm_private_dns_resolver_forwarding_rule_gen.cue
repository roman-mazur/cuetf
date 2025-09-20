package data

#azurerm_private_dns_resolver_forwarding_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_dns_resolver_forwarding_rule")
	close({
		timeouts?:                  #timeouts
		dns_forwarding_ruleset_id!: string
		domain_name?:               string
		enabled?:                   bool
		id?:                        string
		metadata?: [string]: string
		name!: string
		target_dns_servers?: [...close({
			ip_address?: string
			port?:       number
		})]
	})

	#timeouts: close({
		read?: string
	})
}
