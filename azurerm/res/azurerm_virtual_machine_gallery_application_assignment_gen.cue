package res

#azurerm_virtual_machine_gallery_application_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_machine_gallery_application_assignment")
	close({
		timeouts?:                       #timeouts
		configuration_blob_uri?:         string
		gallery_application_version_id!: string
		id?:                             string
		order?:                          number
		tag?:                            string
		virtual_machine_id!:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
