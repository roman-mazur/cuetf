package res

import "list"

#azurerm_api_management_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_api")
	close({
		api_management_name!: string
		api_type?:            string
		description?:         string
		display_name?:        string
		id?:                  string
		is_current?:          bool
		is_online?:           bool
		name!:                string
		path?:                string
		contact?: matchN(1, [#contact, list.MaxItems(1) & [...#contact]])
		protocols?: [...string]
		resource_group_name!:  string
		revision!:             string
		revision_description?: string
		import?: matchN(1, [#import, list.MaxItems(1) & [...#import]])
		service_url?:           string
		source_api_id?:         string
		subscription_required?: bool
		terms_of_service_url?:  string
		version?:               string
		version_description?:   string
		license?: matchN(1, [#license, list.MaxItems(1) & [...#license]])
		oauth2_authorization?: matchN(1, [#oauth2_authorization, list.MaxItems(1) & [...#oauth2_authorization]])
		openid_authentication?: matchN(1, [#openid_authentication, list.MaxItems(1) & [...#openid_authentication]])
		subscription_key_parameter_names?: matchN(1, [#subscription_key_parameter_names, list.MaxItems(1) & [...#subscription_key_parameter_names]])
		version_set_id?: string
		timeouts?:       #timeouts
	})

	#contact: close({
		email?: string
		name?:  string
		url?:   string
	})

	#import: close({
		wsdl_selector?: matchN(1, [_#defs."/$defs/import/$defs/wsdl_selector", list.MaxItems(1) & [..._#defs."/$defs/import/$defs/wsdl_selector"]])
		content_format!: string
		content_value!:  string
	})

	#license: close({
		name?: string
		url?:  string
	})

	#oauth2_authorization: close({
		authorization_server_name!: string
		scope?:                     string
	})

	#openid_authentication: close({
		bearer_token_sending_methods?: [...string]
		openid_provider_name!: string
	})

	#subscription_key_parameter_names: close({
		header!: string
		query!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/import/$defs/wsdl_selector": close({
		endpoint_name!: string
		service_name!:  string
	})
}
