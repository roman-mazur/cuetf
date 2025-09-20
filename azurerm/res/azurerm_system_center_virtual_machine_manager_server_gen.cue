package res

#azurerm_system_center_virtual_machine_manager_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_system_center_virtual_machine_manager_server")
	close({
		custom_location_id!:  string
		fqdn!:                string
		id?:                  string
		location!:            string
		name!:                string
		password!:            string
		port?:                number
		timeouts?:            #timeouts
		resource_group_name!: string
		tags?: [string]: string
		username!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
