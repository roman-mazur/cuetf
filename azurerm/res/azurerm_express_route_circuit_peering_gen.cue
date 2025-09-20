package res

import "list"

#azurerm_express_route_circuit_peering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_express_route_circuit_peering")
	close({
		azure_asn?: number
		ipv6?: matchN(1, [#ipv6, list.MaxItems(1) & [...#ipv6]])
		express_route_circuit_name!: string
		gateway_manager_etag?:       string
		id?:                         string
		ipv4_enabled?:               bool
		peer_asn?:                   number
		peering_type!:               string
		primary_azure_port?:         string
		microsoft_peering_config?: matchN(1, [#microsoft_peering_config, list.MaxItems(1) & [...#microsoft_peering_config]])
		primary_peer_address_prefix?:   string
		resource_group_name!:           string
		route_filter_id?:               string
		secondary_azure_port?:          string
		secondary_peer_address_prefix?: string
		shared_key?:                    string
		vlan_id!:                       number
		timeouts?:                      #timeouts
	})

	#ipv6: close({
		microsoft_peering?: matchN(1, [_#defs."/$defs/ipv6/$defs/microsoft_peering", list.MaxItems(1) & [..._#defs."/$defs/ipv6/$defs/microsoft_peering"]])
		enabled?:                       bool
		primary_peer_address_prefix!:   string
		route_filter_id?:               string
		secondary_peer_address_prefix!: string
	})

	#microsoft_peering_config: close({
		advertised_communities?: [...string]
		advertised_public_prefixes!: [...string]
		customer_asn?:          number
		routing_registry_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/ipv6/$defs/microsoft_peering": close({
		advertised_communities?: [...string]
		advertised_public_prefixes?: [...string]
		customer_asn?:          number
		routing_registry_name?: string
	})
}
