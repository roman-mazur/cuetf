package res

#azurerm_container_app_environment_managed_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_container_app_environment_managed_certificate")
	close({
		timeouts?: #timeouts

		// The Container App Managed Environment ID to configure this
		// Managed Certificate on.
		container_app_environment_id!: string

		// The domain control validation type for the managed certificate.
		// Possible values are `CNAME` and `HTTP`. Defaults to `HTTP`.
		domain_control_validation?: string
		id?:                        string

		// The name of the Container Apps Managed Certificate.
		name!: string

		// The Subject Name of the Certificate. Must be a valid domain
		// name.
		subject_name!: string
		tags?: [string]: string

		// The validation token for the managed certificate.
		validation_token?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
