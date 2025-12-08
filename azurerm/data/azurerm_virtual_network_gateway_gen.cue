package data

#azurerm_virtual_network_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_virtual_network_gateway")
	close({
		active_active?: bool
		bgp_settings?: [...close({
			asn?:             number
			peer_weight?:     number
			peering_address?: string
		})]
		custom_route?: [...close({
			address_prefixes?: [...string]
		})]
		default_local_network_gateway_id?: string
		enable_bgp?:                       bool
		generation?:                       string
		id?:                               string
		ip_configuration?: [...close({
			id?:                            string
			name?:                          string
			private_ip_address?:            string
			private_ip_address_allocation?: string
			public_ip_address_id?:          string
			subnet_id?:                     string
		})]
		location?:                   string
		name!:                       string
		private_ip_address_enabled?: bool
		resource_group_name!:        string
		timeouts?:                   #timeouts
		sku?:                        string
		tags?: [string]: string
		type?: string
		vpn_client_configuration?: [...close({
			aad_audience?: string
			aad_issuer?:   string
			aad_tenant?:   string
			address_space?: [...string]
			radius_server_address?: string
			radius_server_secret?:  string
			revoked_certificate?: [...close({
				name?:       string
				thumbprint?: string
			})]
			root_certificate?: [...close({
				name?:             string
				public_cert_data?: string
			})]
			vpn_client_protocols?: [...string]
		})]
		vpn_type?: string
	})

	#timeouts: close({
		read?: string
	})
}
