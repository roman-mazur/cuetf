package res

import "list"

#azurerm_local_network_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_local_network_gateway")
	close({
		bgp_settings?: matchN(1, [#bgp_settings, list.MaxItems(1) & [...#bgp_settings]])
		address_space?: [...string]
		gateway_address?:     string
		gateway_fqdn?:        string
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#bgp_settings: close({
		asn!:                 number
		bgp_peering_address!: string
		peer_weight?:         number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
