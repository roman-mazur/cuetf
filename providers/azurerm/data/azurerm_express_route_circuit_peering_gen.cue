package data

azurerm_express_route_circuit_peering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_express_route_circuit_peering")
	close({
		timeouts?:                   #timeouts
		azure_asn?:                  number
		express_route_circuit_name!: string
		gateway_manager_etag?:       string
		id?:                         string
		ipv4_enabled?:               bool
		ipv6?: [...close({
			enabled?: bool
			microsoft_peering?: [...close({
				advertised_communities?: [...string]
				advertised_public_prefixes?: [...string]
				customer_asn?:          number
				routing_registry_name?: string
			})]
			primary_peer_address_prefix?:   string
			route_filter_id?:               string
			secondary_peer_address_prefix?: string
		})]
		microsoft_peering_config?: [...close({
			advertised_communities?: [...string]
			advertised_public_prefixes?: [...string]
			customer_asn?:          number
			routing_registry_name?: string
		})]
		peer_asn?:                      number
		peering_type!:                  string
		primary_azure_port?:            string
		primary_peer_address_prefix?:   string
		resource_group_name!:           string
		route_filter_id?:               string
		secondary_azure_port?:          string
		secondary_peer_address_prefix?: string
		shared_key?:                    string
		vlan_id?:                       number
	})

	#timeouts: close({
		read?: string
	})
}
