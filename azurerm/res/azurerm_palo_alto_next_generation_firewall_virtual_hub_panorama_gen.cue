package res

import "list"

#azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama")
	close({
		id?:                   string
		location!:             string
		marketplace_offer_id?: string
		name!:                 string
		panorama?: [...close({
			device_group_name?:       string
			host_name?:               string
			name?:                    string
			panorama_server_1?:       string
			panorama_server_2?:       string
			template_name?:           string
			virtual_machine_ssh_key?: string
		})]
		destination_nat?: matchN(1, [#destination_nat, [...#destination_nat]])
		panorama_base64_config!: string
		dns_settings?: matchN(1, [#dns_settings, list.MaxItems(1) & [...#dns_settings]])
		plan_id?:             string
		resource_group_name!: string
		network_profile?: matchN(1, [#network_profile, list.MaxItems(1) & [_, ...] & [...#network_profile]])
		timeouts?: #timeouts
		tags?: [string]: string
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
		egress_nat_ip_address_ids?: [...string]
		egress_nat_ip_addresses?: [...string]
		ip_of_trust_for_user_defined_routes?: string
		network_virtual_appliance_id!:        string
		public_ip_address_ids!: [...string]
		public_ip_addresses?: [...string]
		trusted_address_ranges?: [...string]
		trusted_subnet_id?:   string
		untrusted_subnet_id?: string
		virtual_hub_id!:      string
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
}
