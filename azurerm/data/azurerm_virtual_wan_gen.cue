package data

#azurerm_virtual_wan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_wan")
	close({
		allow_branch_to_branch_traffic?:    bool
		disable_vpn_encryption?:            bool
		id?:                                string
		location?:                          string
		name!:                              string
		office365_local_breakout_category?: string
		resource_group_name!:               string
		sku?:                               string
		tags?: [string]: string
		timeouts?: #timeouts
		virtual_hub_ids?: [...string]
		vpn_site_ids?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
