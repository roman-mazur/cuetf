package res

import "list"

#azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack")
	close({
		id?:                   string
		marketplace_offer_id?: string
		name!:                 string
		plan_id?:              string
		resource_group_name!:  string
		rulestack_id!:         string
		destination_nat?: matchN(1, [#destination_nat, [...#destination_nat]])
		tags?: [string]: string
		dns_settings?: matchN(1, [#dns_settings, list.MaxItems(1) & [...#dns_settings]])
		network_profile!: matchN(1, [#network_profile, list.MaxItems(1) & [_, ...] & [...#network_profile]])
		timeouts?: #timeouts
	})

	#destination_nat: close({
		backend_config?: matchN(1, [_#defs."/$defs/destination_nat/$defs/backend_config", list.MaxItems(1) & [..._#defs."/$defs/destination_nat/$defs/backend_config"]])
		frontend_config?: matchN(1, [_#defs."/$defs/destination_nat/$defs/frontend_config", list.MaxItems(1) & [..._#defs."/$defs/destination_nat/$defs/frontend_config"]])
		name!:     string
		protocol!: string
	})

	#dns_settings: close({
		azure_dns_servers?: [...string]
		dns_servers?: [...string]
		use_azure_dns?: bool
	})

	#network_profile: close({
		vnet_configuration!: matchN(1, [_#defs."/$defs/network_profile/$defs/vnet_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/network_profile/$defs/vnet_configuration"]])
		egress_nat_ip_address_ids?: [...string]
		egress_nat_ip_addresses?: [...string]
		public_ip_address_ids!: [...string]
		public_ip_addresses?: [...string]
		trusted_address_ranges?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/destination_nat/$defs/backend_config": close({
		port!:              number
		public_ip_address!: string
	})

	_#defs: "/$defs/destination_nat/$defs/frontend_config": close({
		port!:                 number
		public_ip_address_id!: string
	})

	_#defs: "/$defs/network_profile/$defs/vnet_configuration": close({
		ip_of_trust_for_user_defined_routes?: string
		trusted_subnet_id?:                   string
		untrusted_subnet_id?:                 string
		virtual_network_id!:                  string
	})
}
