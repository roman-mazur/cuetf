package res

#azurerm_synapse_firewall_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_synapse_firewall_rule")
	close({
		timeouts?:             #timeouts
		end_ip_address!:       string
		id?:                   string
		name!:                 string
		start_ip_address!:     string
		synapse_workspace_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
