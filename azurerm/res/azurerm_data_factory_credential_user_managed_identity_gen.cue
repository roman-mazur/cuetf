package res

#azurerm_data_factory_credential_user_managed_identity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_credential_user_managed_identity")
	close({
		// (Optional) List of string annotations.
		annotations?: [...string]

		// The resource ID of the parent Data Factory
		data_factory_id!: string

		// (Optional) Short text description
		description?: string
		id?:          string

		// The resource ID of the User Assigned Managed Identity
		identity_id!: string
		timeouts?:    #timeouts

		// The desired name of the credential resource
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
