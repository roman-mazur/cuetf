package data

#azurerm_local_network_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_local_network_gateway")
	close({
		timeouts?: #timeouts
		address_space?: [...string]
		bgp_settings?: [...close({
			asn?:                 number
			bgp_peering_address?: string
			peer_weight?:         number
		})]
		gateway_address?:     string
		gateway_fqdn?:        string
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
