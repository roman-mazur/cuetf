package res

#azurerm_virtual_machine_data_disk_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_machine_data_disk_attachment")
	close({
		timeouts?:                  #timeouts
		caching!:                   string
		create_option?:             string
		id?:                        string
		lun!:                       number
		managed_disk_id!:           string
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
