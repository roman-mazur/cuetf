package res

#azurerm_network_manager_admin_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_manager_admin_rule")
	close({
		action!:                   string
		admin_rule_collection_id!: string
		description?:              string
		destination_port_ranges?: [...string]
		direction!: string
		id?:        string
		destination?: matchN(1, [#destination, [...#destination]])
		name!: string
		source?: matchN(1, [#source, [...#source]])
		timeouts?: #timeouts
		priority!: number
		protocol!: string
		source_port_ranges?: [...string]
	})

	#destination: close({
		address_prefix!:      string
		address_prefix_type!: string
	})

	#source: close({
		address_prefix!:      string
		address_prefix_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
