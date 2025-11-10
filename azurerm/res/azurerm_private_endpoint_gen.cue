package res

import "list"

#azurerm_private_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_private_endpoint")
	close({
		custom_dns_configs?: [...close({
			fqdn?: string
			ip_addresses?: [...string]
		})]
		custom_network_interface_name?: string
		id?:                            string
		location!:                      string
		name!:                          string
		network_interface?: [...close({
			id?:   string
			name?: string
		})]
		ip_configuration?: matchN(1, [#ip_configuration, [...#ip_configuration]])
		private_dns_zone_group?: matchN(1, [#private_dns_zone_group, list.MaxItems(1) & [...#private_dns_zone_group]])
		private_service_connection!: matchN(1, [#private_service_connection, list.MaxItems(1) & [_, ...] & [...#private_service_connection]])
		private_dns_zone_configs?: [...close({
			id?:                  string
			name?:                string
			private_dns_zone_id?: string
			record_sets?: [...close({
				fqdn?: string
				ip_addresses?: [...string]
				name?: string
				ttl?:  number
				type?: string
			})]
		})]
		resource_group_name!: string
		subnet_id!:           string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#ip_configuration: close({
		member_name?:        string
		name!:               string
		private_ip_address!: string
		subresource_name?:   string
	})

	#private_dns_zone_group: close({
		id?:   string
		name!: string
		private_dns_zone_ids!: [...string]
	})

	#private_service_connection: close({
		is_manual_connection!:              bool
		name!:                              string
		private_connection_resource_alias?: string
		private_connection_resource_id?:    string
		private_ip_address?:                string
		request_message?:                   string
		subresource_names?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
