package res

import "list"

#azurerm_network_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_profile")
	close({
		container_network_interface!: matchN(1, [#container_network_interface, list.MaxItems(1) & [_, ...] & [...#container_network_interface]])
		container_network_interface_ids?: [...string]
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#container_network_interface: close({
		ip_configuration!: matchN(1, [_#defs."/$defs/container_network_interface/$defs/ip_configuration", [_, ...] & [..._#defs."/$defs/container_network_interface/$defs/ip_configuration"]])
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/container_network_interface/$defs/ip_configuration": close({
		name!:      string
		subnet_id!: string
	})
}
