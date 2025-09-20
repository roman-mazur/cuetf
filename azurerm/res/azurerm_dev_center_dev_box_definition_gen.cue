package res

#azurerm_dev_center_dev_box_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_center_dev_box_definition")
	close({
		timeouts?:                  #timeouts
		dev_center_id!:             string
		hibernate_support_enabled?: bool
		id?:                        string
		image_reference_id!:        string
		location!:                  string
		name!:                      string
		sku_name!:                  string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
