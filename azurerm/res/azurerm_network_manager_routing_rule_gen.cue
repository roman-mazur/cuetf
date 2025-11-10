package res

import "list"

#azurerm_network_manager_routing_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_manager_routing_rule")
	close({
		destination!: matchN(1, [#destination, list.MaxItems(1) & [_, ...] & [...#destination]])
		description?:        string
		id?:                 string
		name!:               string
		rule_collection_id!: string
		next_hop!: matchN(1, [#next_hop, list.MaxItems(1) & [_, ...] & [...#next_hop]])
		timeouts?: #timeouts
	})

	#destination: close({
		address!: string
		type!:    string
	})

	#next_hop: close({
		address?: string
		type!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
