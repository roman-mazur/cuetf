package res

#azurerm_spring_cloud_accelerator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_accelerator")
	close({
		timeouts?:                #timeouts
		id?:                      string
		name!:                    string
		spring_cloud_service_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
