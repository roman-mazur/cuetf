package res

#azurerm_network_security_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_security_group")
	close({
		timeouts?:            #timeouts
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		security_rule?: [...close({
			access?:                     string
			description?:                string
			destination_address_prefix?: string
			destination_address_prefixes?: [...string]
			destination_application_security_group_ids?: [...string]
			destination_port_range?: string
			destination_port_ranges?: [...string]
			direction?:             string
			name?:                  string
			priority?:              number
			protocol?:              string
			source_address_prefix?: string
			source_address_prefixes?: [...string]
			source_application_security_group_ids?: [...string]
			source_port_range?: string
			source_port_ranges?: [...string]
		})]
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
