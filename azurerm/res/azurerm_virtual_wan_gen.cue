package res

#azurerm_virtual_wan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_wan")
	close({
		timeouts?:                          #timeouts
		allow_branch_to_branch_traffic?:    bool
		disable_vpn_encryption?:            bool
		id?:                                string
		location!:                          string
		name!:                              string
		office365_local_breakout_category?: string
		resource_group_name!:               string
		tags?: [string]: string
		type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
