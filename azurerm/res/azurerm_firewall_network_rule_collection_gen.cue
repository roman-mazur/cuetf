package res

#azurerm_firewall_network_rule_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_firewall_network_rule_collection")
	close({
		rule?: matchN(1, [#rule, [_, ...] & [...#rule]])
		action!:              string
		azure_firewall_name!: string
		id?:                  string
		name!:                string
		priority!:            number
		resource_group_name!: string
		timeouts?:            #timeouts
	})

	#rule: close({
		description?: string
		destination_addresses?: [...string]
		destination_fqdns?: [...string]
		destination_ip_groups?: [...string]
		destination_ports!: [...string]
		name!: string
		protocols!: [...string]
		source_addresses?: [...string]
		source_ip_groups?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
