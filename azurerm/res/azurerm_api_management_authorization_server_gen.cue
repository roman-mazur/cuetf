package res

#azurerm_api_management_authorization_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_authorization_server")
	close({
		api_management_name!:    string
		authorization_endpoint!: string
		authorization_methods!: [...string]
		bearer_token_sending_methods?: [...string]
		client_authentication_method?: [...string]
		client_id!:                    string
		client_registration_endpoint!: string
		client_secret?:                string
		default_scope?:                string
		description?:                  string
		timeouts?:                     #timeouts
		display_name!:                 string
		grant_types!: [...string]
		id?:   string
		name!: string
		token_body_parameter?: matchN(1, [#token_body_parameter, [...#token_body_parameter]])
		resource_group_name!:     string
		resource_owner_password?: string
		resource_owner_username?: string
		support_state?:           bool
		token_endpoint?:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#token_body_parameter: close({
		name!:  string
		value!: string
	})
}
