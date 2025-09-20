package res

import "list"

#azurerm_virtual_network_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_network_gateway")
	close({
		active_active?:                         bool
		bgp_route_translation_for_nat_enabled?: bool
		default_local_network_gateway_id?:      string
		dns_forwarding_enabled?:                bool
		edge_zone?:                             string
		enable_bgp?:                            bool
		generation?:                            string
		id?:                                    string
		ip_sec_replay_protection_enabled?:      bool
		location!:                              string
		name!:                                  string
		private_ip_address_enabled?:            bool
		bgp_settings?: matchN(1, [#bgp_settings, list.MaxItems(1) & [...#bgp_settings]])
		remote_vnet_traffic_enabled?: bool
		resource_group_name!:         string
		custom_route?: matchN(1, [#custom_route, list.MaxItems(1) & [...#custom_route]])
		sku!: string
		ip_configuration?: matchN(1, [#ip_configuration, list.MaxItems(3) & [_, ...] & [...#ip_configuration]])
		tags?: [string]: string
		type!:                        string
		virtual_wan_traffic_enabled?: bool
		policy_group?: matchN(1, [#policy_group, [...#policy_group]])
		timeouts?: #timeouts
		vpn_client_configuration?: matchN(1, [#vpn_client_configuration, list.MaxItems(1) & [...#vpn_client_configuration]])
		vpn_type?: string
	})

	#bgp_settings: close({
		peering_addresses?: matchN(1, [_#defs."/$defs/bgp_settings/$defs/peering_addresses", list.MaxItems(2) & [..._#defs."/$defs/bgp_settings/$defs/peering_addresses"]])
		asn?:         number
		peer_weight?: number
	})

	#custom_route: close({
		address_prefixes?: [...string]
	})

	#ip_configuration: close({
		name?:                          string
		private_ip_address_allocation?: string
		public_ip_address_id?:          string
		subnet_id!:                     string
	})

	#policy_group: close({
		policy_member?: matchN(1, [_#defs."/$defs/policy_group/$defs/policy_member", [_, ...] & [..._#defs."/$defs/policy_group/$defs/policy_member"]])
		is_default?: bool
		name!:       string
		priority?:   number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#vpn_client_configuration: close({
		aad_audience?: string
		ipsec_policy?: matchN(1, [_#defs."/$defs/vpn_client_configuration/$defs/ipsec_policy", list.MaxItems(1) & [..._#defs."/$defs/vpn_client_configuration/$defs/ipsec_policy"]])
		aad_issuer?: string
		aad_tenant?: string
		address_space!: [...string]
		radius_server_address?: string
		radius_server?: matchN(1, [_#defs."/$defs/vpn_client_configuration/$defs/radius_server", [..._#defs."/$defs/vpn_client_configuration/$defs/radius_server"]])
		radius_server_secret?: string
		vpn_auth_types?: [...string]
		revoked_certificate?: matchN(1, [_#defs."/$defs/vpn_client_configuration/$defs/revoked_certificate", [..._#defs."/$defs/vpn_client_configuration/$defs/revoked_certificate"]])
		root_certificate?: matchN(1, [_#defs."/$defs/vpn_client_configuration/$defs/root_certificate", [..._#defs."/$defs/vpn_client_configuration/$defs/root_certificate"]])
		virtual_network_gateway_client_connection?: matchN(1, [_#defs."/$defs/vpn_client_configuration/$defs/virtual_network_gateway_client_connection", [..._#defs."/$defs/vpn_client_configuration/$defs/virtual_network_gateway_client_connection"]])
		vpn_client_protocols?: [...string]
	})

	_#defs: "/$defs/bgp_settings/$defs/peering_addresses": close({
		apipa_addresses?: [...string]
		default_addresses?: [...string]
		ip_configuration_name?: string
		tunnel_ip_addresses?: [...string]
	})

	_#defs: "/$defs/policy_group/$defs/policy_member": close({
		name!:  string
		type!:  string
		value!: string
	})

	_#defs: "/$defs/vpn_client_configuration/$defs/ipsec_policy": close({
		dh_group!:                  string
		ike_encryption!:            string
		ike_integrity!:             string
		ipsec_encryption!:          string
		ipsec_integrity!:           string
		pfs_group!:                 string
		sa_data_size_in_kilobytes!: number
		sa_lifetime_in_seconds!:    number
	})

	_#defs: "/$defs/vpn_client_configuration/$defs/radius_server": close({
		address!: string
		score!:   number
		secret!:  string
	})

	_#defs: "/$defs/vpn_client_configuration/$defs/revoked_certificate": close({
		name!:       string
		thumbprint!: string
	})

	_#defs: "/$defs/vpn_client_configuration/$defs/root_certificate": close({
		name!:             string
		public_cert_data!: string
	})

	_#defs: "/$defs/vpn_client_configuration/$defs/virtual_network_gateway_client_connection": close({
		address_prefixes!: [...string]
		name!: string
		policy_group_names!: [...string]
	})
}
