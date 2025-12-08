package res

#azurerm_api_management_workspace_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_workspace_certificate")
	close({
		api_management_workspace_id!:      string
		certificate_data_base64?:          string
		expiration?:                       string
		id?:                               string
		key_vault_secret_id?:              string
		name!:                             string
		password?:                         string
		timeouts?:                         #timeouts
		subject?:                          string
		thumbprint?:                       string
		user_assigned_identity_client_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
