package res

#azurerm_network_manager_ipam_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_manager_ipam_pool")
	close({
		timeouts?: #timeouts
		address_prefixes!: [...string]
		description?:        string
		display_name?:       string
		id?:                 string
		location!:           string
		name!:               string
		network_manager_id!: string
		parent_pool_name?:   string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
