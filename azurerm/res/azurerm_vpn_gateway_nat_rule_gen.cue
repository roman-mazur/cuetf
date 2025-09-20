package res

#azurerm_vpn_gateway_nat_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_vpn_gateway_nat_rule")
	close({
		external_mapping?: matchN(1, [#external_mapping, [...#external_mapping]])
		id?:                  string
		ip_configuration_id?: string
		mode?:                string
		name!:                string
		type?:                string
		vpn_gateway_id!:      string
		internal_mapping?: matchN(1, [#internal_mapping, [...#internal_mapping]])
		timeouts?: #timeouts
	})

	#external_mapping: close({
		address_space!: string
		port_range?:    string
	})

	#internal_mapping: close({
		address_space!: string
		port_range?:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
