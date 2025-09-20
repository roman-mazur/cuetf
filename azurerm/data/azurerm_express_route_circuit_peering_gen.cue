package data

#azurerm_express_route_circuit_peering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_express_route_circuit_peering")
	close({
		azure_asn?:                     number
		express_route_circuit_name!:    string
		gateway_manager_etag?:          string
		id?:                            string
		ipv4_enabled?:                  bool
		peer_asn?:                      number
		peering_type!:                  string
		primary_azure_port?:            string
		primary_peer_address_prefix?:   string
		resource_group_name!:           string
		route_filter_id?:               string
		secondary_azure_port?:          string
		timeouts?:                      #timeouts
		secondary_peer_address_prefix?: string
		shared_key?:                    string
		vlan_id?:                       number
	})

	#timeouts: close({
		read?: string
	})
}
