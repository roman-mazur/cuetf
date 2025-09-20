package res

#azurerm_container_app_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_app_custom_domain")
	close({
		// The Binding type. Possible values include `Disabled` and
		// `SniEnabled`.
		certificate_binding_type?: string

		// The hostname of the Certificate. Must be the CN or a named SAN
		// in the certificate.
		name!:                                             string
		container_app_environment_certificate_id?:         string
		container_app_environment_managed_certificate_id?: string
		container_app_id!:                                 string
		id?:                                               string
		timeouts?:                                         #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
