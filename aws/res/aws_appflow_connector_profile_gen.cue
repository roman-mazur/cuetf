package res

import "list"

#aws_appflow_connector_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appflow_connector_profile")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		connection_mode!: string
		connector_label?: string
		connector_type!:  string
		credentials_arn?: string
		id?:              string
		kms_arn?:         string
		name!:            string
		connector_profile_config?: matchN(1, [#connector_profile_config, list.MaxItems(1) & [_, ...] & [...#connector_profile_config]])
	})

	#connector_profile_config: close({
		connector_profile_credentials?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials"]])
		connector_profile_properties?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties"]])
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials": close({
		amplitude?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/amplitude", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/amplitude"]])
		custom_connector?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector"]])
		datadog?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/datadog", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/datadog"]])
		dynatrace?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/dynatrace", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/dynatrace"]])
		google_analytics?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/google_analytics", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/google_analytics"]])
		honeycode?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/honeycode", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/honeycode"]])
		infor_nexus?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/infor_nexus", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/infor_nexus"]])
		marketo?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/marketo", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/marketo"]])
		redshift?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/redshift", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/redshift"]])
		salesforce?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/salesforce", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/salesforce"]])
		sapo_data?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/sapo_data", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/sapo_data"]])
		service_now?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/service_now", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/service_now"]])
		singular?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/singular", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/singular"]])
		slack?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/slack", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/slack"]])
		snowflake?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/snowflake", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/snowflake"]])
		trendmicro?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/trendmicro", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/trendmicro"]])
		veeva?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/veeva", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/veeva"]])
		zendesk?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/zendesk", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/zendesk"]])
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/amplitude": close({
		api_key!:    string
		secret_key!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector": close({
		api_key?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/api_key", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/api_key"]])
		basic?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/basic", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/basic"]])
		custom?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/custom", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/custom"]])
		oauth2?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/oauth2", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/oauth2"]])
		authentication_type!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/api_key": close({
		api_key!:        string
		api_secret_key?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/basic": close({
		password!: string
		username!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/custom": close({
		credentials_map?: [string]: string
		custom_authentication_type!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/oauth2": close({
		oauth_request?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/oauth2/$defs/oauth_request", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/oauth2/$defs/oauth_request"]])
		access_token?:  string
		client_id?:     string
		client_secret?: string
		refresh_token?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/custom_connector/$defs/oauth2/$defs/oauth_request": close({
		auth_code?:    string
		redirect_uri?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/datadog": close({
		api_key!:         string
		application_key!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/dynatrace": close({
		api_token!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/google_analytics": close({
		oauth_request?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/google_analytics/$defs/oauth_request", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/google_analytics/$defs/oauth_request"]])
		access_token?:  string
		client_id!:     string
		client_secret!: string
		refresh_token?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/google_analytics/$defs/oauth_request": close({
		auth_code?:    string
		redirect_uri?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/honeycode": close({
		oauth_request?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/honeycode/$defs/oauth_request", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/honeycode/$defs/oauth_request"]])
		access_token?:  string
		refresh_token?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/honeycode/$defs/oauth_request": close({
		auth_code?:    string
		redirect_uri?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/infor_nexus": close({
		access_key_id!:     string
		datakey!:           string
		secret_access_key!: string
		user_id!:           string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/marketo": close({
		oauth_request?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/marketo/$defs/oauth_request", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/marketo/$defs/oauth_request"]])
		access_token?:  string
		client_id!:     string
		client_secret!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/marketo/$defs/oauth_request": close({
		auth_code?:    string
		redirect_uri?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/redshift": close({
		password!: string
		username!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/salesforce": close({
		oauth_request?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/salesforce/$defs/oauth_request", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/salesforce/$defs/oauth_request"]])
		access_token?:           string
		client_credentials_arn?: string
		jwt_token?:              string
		oauth2_grant_type?:      string
		refresh_token?:          string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/salesforce/$defs/oauth_request": close({
		auth_code?:    string
		redirect_uri?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/sapo_data": close({
		basic_auth_credentials?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/sapo_data/$defs/basic_auth_credentials", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/sapo_data/$defs/basic_auth_credentials"]])
		oauth_credentials?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/sapo_data/$defs/oauth_credentials", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/sapo_data/$defs/oauth_credentials"]])
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/sapo_data/$defs/basic_auth_credentials": close({
		password!: string
		username!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/sapo_data/$defs/oauth_credentials": close({
		oauth_request?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/sapo_data/$defs/oauth_credentials/$defs/oauth_request", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/sapo_data/$defs/oauth_credentials/$defs/oauth_request"]])
		access_token?:  string
		client_id!:     string
		client_secret!: string
		refresh_token?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/sapo_data/$defs/oauth_credentials/$defs/oauth_request": close({
		auth_code?:    string
		redirect_uri?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/service_now": close({
		password!: string
		username!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/singular": close({
		api_key!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/slack": close({
		oauth_request?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/slack/$defs/oauth_request", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/slack/$defs/oauth_request"]])
		access_token?:  string
		client_id!:     string
		client_secret!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/slack/$defs/oauth_request": close({
		auth_code?:    string
		redirect_uri?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/snowflake": close({
		password!: string
		username!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/trendmicro": close({
		api_secret_key!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/veeva": close({
		password!: string
		username!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/zendesk": close({
		oauth_request?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/zendesk/$defs/oauth_request", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/zendesk/$defs/oauth_request"]])
		access_token?:  string
		client_id!:     string
		client_secret!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_credentials/$defs/zendesk/$defs/oauth_request": close({
		auth_code?:    string
		redirect_uri?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties": close({
		amplitude?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/amplitude", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/amplitude"]])
		custom_connector?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/custom_connector", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/custom_connector"]])
		datadog?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/datadog", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/datadog"]])
		dynatrace?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/dynatrace", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/dynatrace"]])
		google_analytics?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/google_analytics", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/google_analytics"]])
		honeycode?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/honeycode", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/honeycode"]])
		infor_nexus?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/infor_nexus", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/infor_nexus"]])
		marketo?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/marketo", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/marketo"]])
		redshift?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/redshift", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/redshift"]])
		salesforce?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/salesforce", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/salesforce"]])
		sapo_data?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/sapo_data", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/sapo_data"]])
		service_now?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/service_now", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/service_now"]])
		singular?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/singular", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/singular"]])
		slack?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/slack", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/slack"]])
		snowflake?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/snowflake", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/snowflake"]])
		trendmicro?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/trendmicro", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/trendmicro"]])
		veeva?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/veeva", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/veeva"]])
		zendesk?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/zendesk", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/zendesk"]])
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/amplitude": close({})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/custom_connector": close({
		oauth2_properties?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/custom_connector/$defs/oauth2_properties", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/custom_connector/$defs/oauth2_properties"]])
		profile_properties?: [string]: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/custom_connector/$defs/oauth2_properties": close({
		oauth2_grant_type!: string
		token_url!:         string
		token_url_custom_properties?: [string]: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/datadog": close({
		instance_url!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/dynatrace": close({
		instance_url!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/google_analytics": close({})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/honeycode": close({})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/infor_nexus": close({
		instance_url!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/marketo": close({
		instance_url!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/redshift": close({
		bucket_name!:        string
		bucket_prefix?:      string
		cluster_identifier?: string
		data_api_role_arn?:  string
		database_name?:      string
		database_url?:       string
		role_arn!:           string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/salesforce": close({
		instance_url?:                                   string
		is_sandbox_environment?:                         bool
		use_privatelink_for_metadata_and_authorization?: bool
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/sapo_data": close({
		oauth_properties?: matchN(1, [_#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/sapo_data/$defs/oauth_properties", list.MaxItems(1) & [..._#defs."/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/sapo_data/$defs/oauth_properties"]])
		application_host_url!:      string
		application_service_path!:  string
		client_number!:             string
		logon_language?:            string
		port_number!:               number
		private_link_service_name?: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/sapo_data/$defs/oauth_properties": close({
		auth_code_url!: string
		oauth_scopes!: [...string]
		token_url!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/service_now": close({
		instance_url!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/singular": close({})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/slack": close({
		instance_url!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/snowflake": close({
		account_name?:              string
		bucket_name!:               string
		bucket_prefix?:             string
		private_link_service_name?: string
		region?:                    string
		stage!:                     string
		warehouse!:                 string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/trendmicro": close({})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/veeva": close({
		instance_url!: string
	})

	_#defs: "/$defs/connector_profile_config/$defs/connector_profile_properties/$defs/zendesk": close({
		instance_url!: string
	})
}
