package res

#azurerm_virtual_machine_implicit_data_disk_from_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_machine_implicit_data_disk_from_source")
	close({
		timeouts?:                  #timeouts
		caching?:                   string
		create_option!:             string
		disk_size_gb!:              number
		id?:                        string
		lun!:                       number
		name!:                      string
		source_resource_id!:        string
		virtual_machine_id!:        string
		write_accelerator_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
