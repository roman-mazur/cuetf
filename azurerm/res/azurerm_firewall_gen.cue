package res

import "list"

#azurerm_firewall: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_firewall")
	close({
		dns_proxy_enabled?: bool
		dns_servers?: [...string]
		firewall_policy_id?: string
		id?:                 string
		location!:           string
		name!:               string
		private_ip_ranges?: [...string]
		resource_group_name!: string
		sku_name!:            string
		ip_configuration?: matchN(1, [#ip_configuration, [...#ip_configuration]])
		sku_tier!: string
		tags?: [string]: string
		threat_intel_mode?: string
		zones?: [...string]
		management_ip_configuration?: matchN(1, [#management_ip_configuration, list.MaxItems(1) & [...#management_ip_configuration]])
		timeouts?: #timeouts
		virtual_hub?: matchN(1, [#virtual_hub, list.MaxItems(1) & [...#virtual_hub]])
	})

	#ip_configuration: close({
		name!:                 string
		private_ip_address?:   string
		public_ip_address_id?: string
		subnet_id?:            string
	})

	#management_ip_configuration: close({
		name!:                 string
		private_ip_address?:   string
		public_ip_address_id!: string
		subnet_id!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#virtual_hub: close({
		private_ip_address?: string
		public_ip_addresses?: [...string]
		public_ip_count?: number
		virtual_hub_id!:  string
	})
}
