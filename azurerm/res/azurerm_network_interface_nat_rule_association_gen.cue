package res

#azurerm_network_interface_nat_rule_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_interface_nat_rule_association")
	close({
		timeouts?:              #timeouts
		id?:                    string
		ip_configuration_name!: string
		nat_rule_id!:           string
		network_interface_id!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
