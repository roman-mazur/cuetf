package res

#azurerm_iothub_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iothub_certificate")
	close({
		timeouts?:            #timeouts
		certificate_content!: string
		id?:                  string
		iothub_name!:         string
		is_verified?:         bool
		name!:                string
		resource_group_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
