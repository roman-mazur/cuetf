package res

#azurerm_api_management_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_certificate")
	close({
		api_management_name!:          string
		data?:                         string
		expiration?:                   string
		id?:                           string
		key_vault_identity_client_id?: string
		key_vault_secret_id?:          string
		name!:                         string
		password?:                     string
		resource_group_name!:          string
		timeouts?:                     #timeouts
		subject?:                      string
		thumbprint?:                   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
