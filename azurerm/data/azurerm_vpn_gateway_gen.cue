package data

#azurerm_vpn_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_vpn_gateway")
	close({
		timeouts?: #timeouts
		bgp_settings?: [...close({
			asn?:                 number
			bgp_peering_address?: string
			instance_0_bgp_peering_address?: [...close({
				custom_ips?: [...string]
				default_ips?: [...string]
				ip_configuration_id?: string
				tunnel_ips?: [...string]
			})]
			instance_1_bgp_peering_address?: [...close({
				custom_ips?: [...string]
				default_ips?: [...string]
				ip_configuration_id?: string
				tunnel_ips?: [...string]
			})]
			peer_weight?: number
		})]
		id?: string
		ip_configuration?: [...close({
			id?:                 string
			private_ip_address?: string
			public_ip_address?:  string
		})]
		location?:            string
		name!:                string
		resource_group_name!: string
		scale_unit?:          number
		tags?: [string]: string
		virtual_hub_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
