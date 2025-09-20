package res

import "list"

#azurerm_function_app_slot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_function_app_slot")
	close({
		app_service_plan_id!: string
		app_settings?: [string]: string
		daily_memory_time_quota?: number
		default_hostname?:        string
		enable_builtin_logging?:  bool
		enabled?:                 bool
		function_app_name!:       string
		https_only?:              bool
		id?:                      string
		auth_settings?: matchN(1, [#auth_settings, list.MaxItems(1) & [...#auth_settings]])
		kind?:     string
		location!: string
		name!:     string
		os_type?:  string
		connection_string?: matchN(1, [#connection_string, [...#connection_string]])
		outbound_ip_addresses?:          string
		possible_outbound_ip_addresses?: string
		resource_group_name!:            string
		site_credential?: [...close({
			password?: string
			username?: string
		})]
		storage_account_access_key!: string
		storage_account_name!:       string
		tags?: [string]: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		site_config?: matchN(1, [#site_config, list.MaxItems(1) & [...#site_config]])
		timeouts?: #timeouts
		version?:  string
	})

	#auth_settings: close({
		additional_login_params?: [string]: string
		allowed_external_redirect_urls?: [...string]
		default_provider?: string
		enabled!:          bool
		issuer?:           string
		active_directory?: matchN(1, [_#defs."/$defs/auth_settings/$defs/active_directory", list.MaxItems(1) & [..._#defs."/$defs/auth_settings/$defs/active_directory"]])
		runtime_version?:               string
		token_refresh_extension_hours?: number
		facebook?: matchN(1, [_#defs."/$defs/auth_settings/$defs/facebook", list.MaxItems(1) & [..._#defs."/$defs/auth_settings/$defs/facebook"]])
		google?: matchN(1, [_#defs."/$defs/auth_settings/$defs/google", list.MaxItems(1) & [..._#defs."/$defs/auth_settings/$defs/google"]])
		token_store_enabled?: bool
		microsoft?: matchN(1, [_#defs."/$defs/auth_settings/$defs/microsoft", list.MaxItems(1) & [..._#defs."/$defs/auth_settings/$defs/microsoft"]])
		twitter?: matchN(1, [_#defs."/$defs/auth_settings/$defs/twitter", list.MaxItems(1) & [..._#defs."/$defs/auth_settings/$defs/twitter"]])
		unauthenticated_client_action?: string
	})

	#connection_string: close({
		name!:  string
		type!:  string
		value!: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#site_config: close({
		always_on?:                bool
		app_scale_limit?:          number
		auto_swap_slot_name?:      string
		dotnet_framework_version?: string
		elastic_instance_minimum?: number
		ftps_state?:               string
		health_check_path?:        string
		http2_enabled?:            bool
		ip_restriction?: [...close({
			action?: string
			headers?: [...close({
				x_azure_fdid?: [...string]
				x_fd_health_probe?: [...string]
				x_forwarded_for?: [...string]
				x_forwarded_host?: [...string]
			})]
			ip_address?:                string
			name?:                      string
			priority?:                  number
			service_tag?:               string
			virtual_network_subnet_id?: string
		})]
		java_version?:     string
		linux_fx_version?: string
		cors?: matchN(1, [_#defs."/$defs/site_config/$defs/cors", list.MaxItems(1) & [..._#defs."/$defs/site_config/$defs/cors"]])
		min_tls_version?:                  string
		pre_warmed_instance_count?:        number
		runtime_scale_monitoring_enabled?: bool
		scm_ip_restriction?: [...close({
			action?: string
			headers?: [...close({
				x_azure_fdid?: [...string]
				x_fd_health_probe?: [...string]
				x_forwarded_for?: [...string]
				x_forwarded_host?: [...string]
			})]
			ip_address?:                string
			name?:                      string
			priority?:                  number
			service_tag?:               string
			virtual_network_subnet_id?: string
		})]
		scm_type?:                    string
		scm_use_main_ip_restriction?: bool
		use_32_bit_worker_process?:   bool
		vnet_route_all_enabled?:      bool
		websockets_enabled?:          bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/auth_settings/$defs/active_directory": close({
		allowed_audiences?: [...string]
		client_id!:     string
		client_secret?: string
	})

	_#defs: "/$defs/auth_settings/$defs/facebook": close({
		app_id!:     string
		app_secret!: string
		oauth_scopes?: [...string]
	})

	_#defs: "/$defs/auth_settings/$defs/google": close({
		client_id!:     string
		client_secret!: string
		oauth_scopes?: [...string]
	})

	_#defs: "/$defs/auth_settings/$defs/microsoft": close({
		client_id!:     string
		client_secret!: string
		oauth_scopes?: [...string]
	})

	_#defs: "/$defs/auth_settings/$defs/twitter": close({
		consumer_key!:    string
		consumer_secret!: string
	})

	_#defs: "/$defs/site_config/$defs/cors": close({
		allowed_origins!: [...string]
		support_credentials?: bool
	})
}
