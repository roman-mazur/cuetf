package data

#azurerm_platform_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_platform_image")
	close({
		timeouts?:  #timeouts
		id?:        string
		location!:  string
		offer!:     string
		publisher!: string
		sku!:       string
		version?:   string
	})

	#timeouts: close({
		read?: string
	})
}
