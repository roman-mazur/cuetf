package res

#azurerm_network_manager_static_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_manager_static_member")
	close({
		timeouts?:                  #timeouts
		id?:                        string
		name!:                      string
		network_group_id!:          string
		region?:                    string
		target_virtual_network_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
