package res

#azurerm_stack_hci_storage_path: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_stack_hci_storage_path")
	close({
		timeouts?:            #timeouts
		custom_location_id!:  string
		id?:                  string
		location!:            string
		name!:                string
		path!:                string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
