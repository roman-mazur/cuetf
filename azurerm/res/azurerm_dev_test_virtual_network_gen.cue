package res

import "list"

#azurerm_dev_test_virtual_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_test_virtual_network")
	close({
		subnet?: matchN(1, [#subnet, list.MaxItems(1) & [...#subnet]])
		description?:         string
		id?:                  string
		lab_name!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		unique_identifier?: string
		timeouts?:          #timeouts
	})

	#subnet: close({
		shared_public_ip_address?: matchN(1, [_#defs."/$defs/subnet/$defs/shared_public_ip_address", list.MaxItems(1) & [..._#defs."/$defs/subnet/$defs/shared_public_ip_address"]])
		name?:                            string
		use_in_virtual_machine_creation?: string
		use_public_ip_address?:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/subnet/$defs/shared_public_ip_address": close({
		allowed_ports?: matchN(1, [_#defs."/$defs/subnet/$defs/shared_public_ip_address/$defs/allowed_ports", [..._#defs."/$defs/subnet/$defs/shared_public_ip_address/$defs/allowed_ports"]])
	})

	_#defs: "/$defs/subnet/$defs/shared_public_ip_address/$defs/allowed_ports": close({
		backend_port?:       number
		transport_protocol?: string
	})
}
