package res

#azurerm_dev_center_environment_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_center_environment_type")
	close({
		timeouts?:      #timeouts
		dev_center_id!: string
		id?:            string
		name!:          string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
