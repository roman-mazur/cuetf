package data

#azurerm_express_route_circuit: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_express_route_circuit")
	close({
		timeouts?: #timeouts
		id?:       string
		location?: string
		name!:     string
		peerings?: [...close({
			azure_asn?:                     number
			peer_asn?:                      number
			peering_type?:                  string
			primary_peer_address_prefix?:   string
			secondary_peer_address_prefix?: string
			shared_key?:                    string
			vlan_id?:                       number
		})]
		resource_group_name!: string
		service_key?:         string
		service_provider_properties?: [...close({
			bandwidth_in_mbps?:     number
			peering_location?:      string
			service_provider_name?: string
		})]
		service_provider_provisioning_state?: string
		sku?: [...close({
			family?: string
			tier?:   string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
