package res

#azurerm_app_service_public_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_app_service_public_certificate")
	close({
		timeouts?:             #timeouts
		app_service_name!:     string
		blob!:                 string
		certificate_location!: string
		certificate_name!:     string
		id?:                   string
		resource_group_name!:  string
		thumbprint?:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
