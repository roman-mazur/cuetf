package res

import "list"

#azurerm_private_dns_resolver_inbound_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_dns_resolver_inbound_endpoint")
	close({
		ip_configurations?: matchN(1, [#ip_configurations, list.MaxItems(1) & [_, ...] & [...#ip_configurations]])
		id?:                      string
		location!:                string
		name!:                    string
		private_dns_resolver_id!: string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#ip_configurations: close({
		private_ip_address?:           string
		private_ip_allocation_method?: string
		subnet_id!:                    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
