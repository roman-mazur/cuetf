package res

import "list"

#azurerm_stack_hci_network_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stack_hci_network_interface")
	close({
		ip_configuration?: matchN(1, [#ip_configuration, list.MaxItems(1) & [_, ...] & [...#ip_configuration]])
		custom_location_id!: string
		dns_servers?: [...string]
		id?:                  string
		location!:            string
		mac_address?:         string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#ip_configuration: close({
		gateway?:            string
		prefix_length?:      string
		private_ip_address?: string
		subnet_id!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
