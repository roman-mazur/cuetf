package res

#azurerm_iotcentral_application_network_rule_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iotcentral_application_network_rule_set")
	close({
		ip_rule?: matchN(1, [#ip_rule, [...#ip_rule]])
		apply_to_device?:           bool
		default_action?:            string
		id?:                        string
		iotcentral_application_id!: string
		timeouts?:                  #timeouts
	})

	#ip_rule: close({
		ip_mask!: string
		name!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
