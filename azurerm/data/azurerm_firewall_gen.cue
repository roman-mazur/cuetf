package data

#azurerm_firewall: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_firewall")
	close({
		dns_proxy_enabled?: bool
		dns_servers?: [...string]
		firewall_policy_id?: string
		id?:                 string
		ip_configuration?: [...close({
			name?:                 string
			private_ip_address?:   string
			public_ip_address_id?: string
			subnet_id?:            string
		})]
		location?: string
		management_ip_configuration?: [...close({
			name?:                 string
			private_ip_address?:   string
			public_ip_address_id?: string
			subnet_id?:            string
		})]
		name!:                string
		resource_group_name!: string
		sku_name?:            string
		sku_tier?:            string
		tags?: [string]: string
		timeouts?:          #timeouts
		threat_intel_mode?: string
		virtual_hub?: [...close({
			private_ip_address?: string
			public_ip_addresses?: [...string]
			public_ip_count?: number
			virtual_hub_id?:  string
		})]
		zones?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
