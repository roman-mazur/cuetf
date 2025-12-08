package res

#azurerm_spring_cloud_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_custom_domain")
	close({
		timeouts?:            #timeouts
		certificate_name?:    string
		id?:                  string
		name!:                string
		spring_cloud_app_id!: string
		thumbprint?:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
