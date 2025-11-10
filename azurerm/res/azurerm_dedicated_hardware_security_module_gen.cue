package res

import "list"

#azurerm_dedicated_hardware_security_module: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dedicated_hardware_security_module")
	close({
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		management_network_profile?: matchN(1, [#management_network_profile, list.MaxItems(1) & [...#management_network_profile]])
		sku_name!: string
		stamp_id?: string
		tags?: [string]: string
		zones?: [...string]
		network_profile!: matchN(1, [#network_profile, list.MaxItems(1) & [_, ...] & [...#network_profile]])
		timeouts?: #timeouts
	})

	#management_network_profile: close({
		network_interface_private_ip_addresses!: [...string]
		subnet_id!: string
	})

	#network_profile: close({
		network_interface_private_ip_addresses!: [...string]
		subnet_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
