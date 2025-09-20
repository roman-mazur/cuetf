package data

#azurerm_system_center_virtual_machine_manager_inventory_items: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_system_center_virtual_machine_manager_inventory_items")
	close({
		timeouts?: #timeouts
		id?:       string
		inventory_items?: [...close({
			id?:   string
			name?: string
			uuid?: string
		})]
		inventory_type!:                                  string
		system_center_virtual_machine_manager_server_id!: string
	})

	#timeouts: close({
		read?: string
	})
}
