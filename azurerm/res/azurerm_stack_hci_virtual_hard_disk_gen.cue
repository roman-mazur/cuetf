package res

#azurerm_stack_hci_virtual_hard_disk: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stack_hci_virtual_hard_disk")
	close({
		block_size_in_bytes?:      number
		custom_location_id!:       string
		disk_file_format?:         string
		disk_size_in_gb!:          number
		dynamic_enabled?:          bool
		hyperv_generation?:        string
		id?:                       string
		location!:                 string
		logical_sector_in_bytes?:  number
		name!:                     string
		physical_sector_in_bytes?: number
		resource_group_name!:      string
		timeouts?:                 #timeouts
		storage_path_id?:          string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
