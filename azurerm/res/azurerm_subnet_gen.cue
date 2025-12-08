package res

import "list"

#azurerm_subnet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_subnet")
	close({
		address_prefixes?: [...string]
		default_outbound_access_enabled?: bool
		id?:                              string
		name!:                            string
		delegation?: matchN(1, [#delegation, [...#delegation]])
		private_endpoint_network_policies?:             string
		private_link_service_network_policies_enabled?: bool
		resource_group_name!:                           string
		service_endpoint_policy_ids?: [...string]
		service_endpoints?: [...string]
		sharing_scope?: string
		ip_address_pool?: matchN(1, [#ip_address_pool, list.MaxItems(1) & [...#ip_address_pool]])
		timeouts?:             #timeouts
		virtual_network_name!: string
	})

	#delegation: close({
		service_delegation!: matchN(1, [_#defs."/$defs/delegation/$defs/service_delegation", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/delegation/$defs/service_delegation"]])
		name!: string
	})

	#ip_address_pool: close({
		allocated_ip_address_prefixes?: [...string]
		id!:                     string
		number_of_ip_addresses!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/delegation/$defs/service_delegation": close({
		actions?: [...string]
		name!: string
	})
}
