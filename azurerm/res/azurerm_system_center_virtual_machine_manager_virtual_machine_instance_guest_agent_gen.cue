package res

#azurerm_system_center_virtual_machine_manager_virtual_machine_instance_guest_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_system_center_virtual_machine_manager_virtual_machine_instance_guest_agent")
	close({
		timeouts?:            #timeouts
		id?:                  string
		password!:            string
		provisioning_action?: string
		scoped_resource_id!:  string
		username!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
