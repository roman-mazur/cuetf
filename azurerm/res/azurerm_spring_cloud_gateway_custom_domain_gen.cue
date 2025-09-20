package res

#azurerm_spring_cloud_gateway_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spring_cloud_gateway_custom_domain")
	close({
		timeouts?:                #timeouts
		id?:                      string
		name!:                    string
		spring_cloud_gateway_id!: string
		thumbprint?:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
