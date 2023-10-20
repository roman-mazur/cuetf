package res

import "list"

#aws_appsync_graphql_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appsync_graphql_api")
	arn?:                string
	authentication_type: string
	id?:                 string
	name:                string
	schema?:             string
	tags?: [string]: string
	tags_all?: [string]: string
	uris?: [string]: string
	visibility?:                         string
	xray_enabled?:                       bool
	additional_authentication_provider?: #additional_authentication_provider | [...#additional_authentication_provider]
	lambda_authorizer_config?:           #lambda_authorizer_config | list.MaxItems(1) & [...#lambda_authorizer_config]
	log_config?:                         #log_config | list.MaxItems(1) & [...#log_config]
	openid_connect_config?:              #openid_connect_config | list.MaxItems(1) & [...#openid_connect_config]
	user_pool_config?:                   #user_pool_config | list.MaxItems(1) & [...#user_pool_config]

	#additional_authentication_provider: {
		authentication_type:       string
		lambda_authorizer_config?: #additional_authentication_provider.#lambda_authorizer_config | list.MaxItems(1) & [...#additional_authentication_provider.#lambda_authorizer_config]
		openid_connect_config?:    #additional_authentication_provider.#openid_connect_config | list.MaxItems(1) & [...#additional_authentication_provider.#openid_connect_config]
		user_pool_config?:         #additional_authentication_provider.#user_pool_config | list.MaxItems(1) & [...#additional_authentication_provider.#user_pool_config]

		#lambda_authorizer_config: {
			authorizer_result_ttl_in_seconds?: number
			authorizer_uri:                    string
			identity_validation_expression?:   string
		}

		#openid_connect_config: {
			auth_ttl?:  number
			client_id?: string
			iat_ttl?:   number
			issuer:     string
		}

		#user_pool_config: {
			app_id_client_regex?: string
			aws_region?:          string
			user_pool_id:         string
		}
	}

	#lambda_authorizer_config: {
		authorizer_result_ttl_in_seconds?: number
		authorizer_uri:                    string
		identity_validation_expression?:   string
	}

	#log_config: {
		cloudwatch_logs_role_arn: string
		exclude_verbose_content?: bool
		field_log_level:          string
	}

	#openid_connect_config: {
		auth_ttl?:  number
		client_id?: string
		iat_ttl?:   number
		issuer:     string
	}

	#user_pool_config: {
		app_id_client_regex?: string
		aws_region?:          string
		default_action:       string
		user_pool_id:         string
	}
}
