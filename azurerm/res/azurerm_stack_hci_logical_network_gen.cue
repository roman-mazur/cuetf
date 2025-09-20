package res

import "list"

#azurerm_stack_hci_logical_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stack_hci_logical_network")
	close({
		subnet?: matchN(1, [#subnet, list.MaxItems(1) & [_, ...] & [...#subnet]])
		custom_location_id!: string
		dns_servers?: [...string]
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		virtual_switch_name!: string
		timeouts?:            #timeouts
	})

	#subnet: close({
		ip_pool?: matchN(1, [_#defs."/$defs/subnet/$defs/ip_pool", [..._#defs."/$defs/subnet/$defs/ip_pool"]])
		route?: matchN(1, [_#defs."/$defs/subnet/$defs/route", list.MaxItems(1) & [..._#defs."/$defs/subnet/$defs/route"]])
		address_prefix?:       string
		ip_allocation_method!: string
		vlan_id?:              number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/subnet/$defs/ip_pool": close({
		end!:   string
		start!: string
	})

	_#defs: "/$defs/subnet/$defs/route": close({
		address_prefix!:      string
		name?:                string
		next_hop_ip_address!: string
	})
}
