package res

#azurerm_container_app_environment_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_app_environment_certificate")
	close({
		// The Certificate Private Key as a base64 encoded PFX or PEM.
		certificate_blob_base64!: string

		// The password for the Certificate.
		certificate_password!: string

		// The Container App Managed Environment ID to configure this
		// Certificate on.
		container_app_environment_id!: string

		// The expiration date for the Certificate.
		expiration_date?: string
		id?:              string

		// The date of issue for the Certificate.
		issue_date?: string

		// The Certificate Issuer.
		issuer?: string

		// The name of the Container Apps Environment Certificate.
		name!:     string
		timeouts?: #timeouts

		// The Subject Name for the Certificate.
		subject_name?: string
		tags?: [string]: string

		// The Thumbprint of the Certificate.
		thumbprint?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
