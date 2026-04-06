package data

#azurerm_shared_image_gallery: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_shared_image_gallery")
	close({
		timeouts?:    #timeouts
		description?: string
		id?:          string
		image_names?: [...string]
		location?:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		unique_name?: string
	})

	#timeouts: close({
		read?: string
	})
}
