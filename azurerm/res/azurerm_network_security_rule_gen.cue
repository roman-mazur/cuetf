package res

#azurerm_network_security_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_security_rule")
	close({
		access!:                     string
		description?:                string
		destination_address_prefix?: string
		destination_address_prefixes?: [...string]
		destination_application_security_group_ids?: [...string]
		destination_port_range?: string
		destination_port_ranges?: [...string]
		direction!:                   string
		id?:                          string
		name!:                        string
		network_security_group_name!: string
		priority!:                    number
		protocol!:                    string
		resource_group_name!:         string
		source_address_prefix?:       string
		timeouts?:                    #timeouts
		source_address_prefixes?: [...string]
		source_application_security_group_ids?: [...string]
		source_port_range?: string
		source_port_ranges?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
