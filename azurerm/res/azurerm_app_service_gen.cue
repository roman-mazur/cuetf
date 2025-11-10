package res

import "list"

#azurerm_app_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_app_service")
	close({
		app_service_plan_id!: string
		app_settings?: [string]: string
		client_affinity_enabled?:       bool
		client_cert_enabled?:           bool
		client_cert_mode?:              string
		custom_domain_verification_id?: string
		default_site_hostname?:         string
		enabled?:                       bool
		https_only?:                    bool
		id?:                            string
		auth_settings?: matchN(1, [#auth_settings, list.MaxItems(1) & [...#auth_settings]])
		key_vault_reference_identity_id?: string
		backup?: matchN(1, [#backup, list.MaxItems(1) & [...#backup]])
		location!: string
		name!:     string
		connection_string?: matchN(1, [#connection_string, [...#connection_string]])
		outbound_ip_address_list?: [...string]
		outbound_ip_addresses?: string
		possible_outbound_ip_address_list?: [...string]
		possible_outbound_ip_addresses?: string
		resource_group_name!:            string
		site_credential?: [...close({
			password?: string
			username?: string
		})]
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		logs?: matchN(1, [#logs, list.MaxItems(1) & [...#logs]])
		site_config?: matchN(1, [#site_config, list.MaxItems(1) & [...#site_config]])
		tags?: [string]: string
		source_control?: matchN(1, [#source_control, list.MaxItems(1) & [...#source_control]])
		storage_account?: matchN(1, [#storage_account, [...#storage_account]])
		timeouts?: #timeouts
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

	#backup: close({
		schedule!: matchN(1, [_#defs."/$defs/backup/$defs/schedule", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/backup/$defs/schedule"]])
		enabled?:             bool
		name!:                string
		storage_account_url!: string
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

	#logs: close({
		application_logs?: matchN(1, [_#defs."/$defs/logs/$defs/application_logs", list.MaxItems(1) & [..._#defs."/$defs/logs/$defs/application_logs"]])
		http_logs?: matchN(1, [_#defs."/$defs/logs/$defs/http_logs", list.MaxItems(1) & [..._#defs."/$defs/logs/$defs/http_logs"]])
		detailed_error_messages_enabled?: bool
		failed_request_tracing_enabled?:  bool
	})

	#site_config: close({
		acr_use_managed_identity_credentials?: bool
		acr_user_managed_identity_client_id?:  string
		always_on?:                            bool
		app_command_line?:                     string
		auto_swap_slot_name?:                  string
		default_documents?: [...string]
		dotnet_framework_version?: string
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
		java_container?:           string
		java_container_version?:   string
		java_version?:             string
		linux_fx_version?:         string
		local_mysql_enabled?:      bool
		managed_pipeline_mode?:    string
		min_tls_version?:          string
		number_of_workers?:        number
		php_version?:              string
		python_version?:           string
		remote_debugging_enabled?: bool
		remote_debugging_version?: string
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
		cors?: matchN(1, [_#defs."/$defs/site_config/$defs/cors", list.MaxItems(1) & [..._#defs."/$defs/site_config/$defs/cors"]])
		scm_type?:                    string
		scm_use_main_ip_restriction?: bool
		use_32_bit_worker_process?:   bool
		vnet_route_all_enabled?:      bool
		websockets_enabled?:          bool
		windows_fx_version?:          string
	})

	#source_control: close({
		branch?:             string
		manual_integration?: bool
		repo_url?:           string
		rollback_enabled?:   bool
		use_mercurial?:      bool
	})

	#storage_account: close({
		access_key!:   string
		account_name!: string
		mount_path?:   string
		name!:         string
		share_name!:   string
		type!:         string
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

	_#defs: "/$defs/backup/$defs/schedule": close({
		frequency_interval!:       number
		frequency_unit!:           string
		keep_at_least_one_backup?: bool
		retention_period_in_days?: number
		start_time?:               string
	})

	_#defs: "/$defs/logs/$defs/application_logs": close({
		azure_blob_storage?: matchN(1, [_#defs."/$defs/logs/$defs/application_logs/$defs/azure_blob_storage", list.MaxItems(1) & [..._#defs."/$defs/logs/$defs/application_logs/$defs/azure_blob_storage"]])
		file_system_level?: string
	})

	_#defs: "/$defs/logs/$defs/application_logs/$defs/azure_blob_storage": close({
		level!:             string
		retention_in_days!: number
		sas_url!:           string
	})

	_#defs: "/$defs/logs/$defs/http_logs": close({
		azure_blob_storage?: matchN(1, [_#defs."/$defs/logs/$defs/http_logs/$defs/azure_blob_storage", list.MaxItems(1) & [..._#defs."/$defs/logs/$defs/http_logs/$defs/azure_blob_storage"]])
		file_system?: matchN(1, [_#defs."/$defs/logs/$defs/http_logs/$defs/file_system", list.MaxItems(1) & [..._#defs."/$defs/logs/$defs/http_logs/$defs/file_system"]])
	})

	_#defs: "/$defs/logs/$defs/http_logs/$defs/azure_blob_storage": close({
		retention_in_days!: number
		sas_url!:           string
	})

	_#defs: "/$defs/logs/$defs/http_logs/$defs/file_system": close({
		retention_in_days!: number
		retention_in_mb!:   number
	})

	_#defs: "/$defs/site_config/$defs/cors": close({
		allowed_origins!: [...string]
		support_credentials?: bool
	})
}
