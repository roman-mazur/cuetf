package res

#azurerm_dev_center_gallery: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_center_gallery")
	close({
		timeouts?:          #timeouts
		dev_center_id!:     string
		id?:                string
		name!:              string
		shared_gallery_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
