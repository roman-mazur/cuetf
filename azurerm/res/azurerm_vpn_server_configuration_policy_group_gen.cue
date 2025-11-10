package res

#azurerm_vpn_server_configuration_policy_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_vpn_server_configuration_policy_group")
	close({
		policy!: matchN(1, [#policy, [_, ...] & [...#policy]])
		id?:                          string
		is_default?:                  bool
		name!:                        string
		priority?:                    number
		vpn_server_configuration_id!: string
		timeouts?:                    #timeouts
	})

	#policy: close({
		name!:  string
		type!:  string
		value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
