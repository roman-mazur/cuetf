package res

#azurerm_container_app_environment_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_app_environment_custom_domain")
	close({
		// The Custom Domain Certificate Private Key as a base64 encoded
		// PFX or PEM.
		certificate_blob_base64!: string

		// The Custom Domain Certificate password.
		certificate_password!: string

		// The Container App Managed Environment ID to configure this
		// Custom Domain on.
		container_app_environment_id!: string
		timeouts?:                     #timeouts

		// The Custom Domain DNS suffix for this Container App
		// Environment.
		dns_suffix!: string
		id?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
