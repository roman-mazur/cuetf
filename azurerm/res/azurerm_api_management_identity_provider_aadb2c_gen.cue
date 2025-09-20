package res

#azurerm_api_management_identity_provider_aadb2c: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_identity_provider_aadb2c")
	close({
		allowed_tenant!:         string
		api_management_name!:    string
		authority!:              string
		client_id!:              string
		client_library?:         string
		client_secret!:          string
		id?:                     string
		password_reset_policy?:  string
		timeouts?:               #timeouts
		profile_editing_policy?: string
		resource_group_name!:    string
		signin_policy!:          string
		signin_tenant!:          string
		signup_policy!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
