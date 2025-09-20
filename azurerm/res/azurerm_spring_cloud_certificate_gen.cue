package res

#azurerm_spring_cloud_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spring_cloud_certificate")
	close({
		timeouts?:                 #timeouts
		certificate_content?:      string
		exclude_private_key?:      bool
		id?:                       string
		key_vault_certificate_id?: string
		name!:                     string
		resource_group_name!:      string
		service_name!:             string
		thumbprint?:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
