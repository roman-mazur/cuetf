package res

#azurerm_system_center_virtual_machine_manager_availability_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_system_center_virtual_machine_manager_availability_set")
	close({
		timeouts?:                                        #timeouts
		custom_location_id!:                              string
		id?:                                              string
		location!:                                        string
		name!:                                            string
		resource_group_name!:                             string
		system_center_virtual_machine_manager_server_id!: string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
