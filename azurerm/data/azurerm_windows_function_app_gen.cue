package data

#azurerm_windows_function_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_windows_function_app")
	close({
		app_settings?: [string]: string
		auth_settings?: [...close({
			active_directory?: [...close({
				allowed_audiences?: [...string]
				client_id?:                  string
				client_secret?:              string
				client_secret_setting_name?: string
			})]
			additional_login_parameters?: [string]: string
			allowed_external_redirect_urls?: [...string]
			default_provider?: string
			enabled?:          bool
			facebook?: [...close({
				app_id?:                  string
				app_secret?:              string
				app_secret_setting_name?: string
				oauth_scopes?: [...string]
			})]
			github?: [...close({
				client_id?:                  string
				client_secret?:              string
				client_secret_setting_name?: string
				oauth_scopes?: [...string]
			})]
			google?: [...close({
				client_id?:                  string
				client_secret?:              string
				client_secret_setting_name?: string
				oauth_scopes?: [...string]
			})]
			issuer?: string
			microsoft?: [...close({
				client_id?:                  string
				client_secret?:              string
				client_secret_setting_name?: string
				oauth_scopes?: [...string]
			})]
			runtime_version?:               string
			token_refresh_extension_hours?: number
			token_store_enabled?:           bool
			twitter?: [...close({
				consumer_key?:                 string
				consumer_secret?:              string
				consumer_secret_setting_name?: string
			})]
			unauthenticated_client_action?: string
		})]
		auth_settings_v2?: [...close({
			active_directory_v2?: [...close({
				allowed_applications?: [...string]
				allowed_audiences?: [...string]
				allowed_groups?: [...string]
				allowed_identities?: [...string]
				client_id?:                            string
				client_secret_certificate_thumbprint?: string
				client_secret_setting_name?:           string
				jwt_allowed_client_applications?: [...string]
				jwt_allowed_groups?: [...string]
				login_parameters?: [string]: string
				tenant_auth_endpoint?:        string
				www_authentication_disabled?: bool
			})]
			apple_v2?: [...close({
				client_id?:                  string
				client_secret_setting_name?: string
				login_scopes?: [...string]
			})]
			auth_enabled?: bool
			azure_static_web_app_v2?: [...close({
				client_id?: string
			})]
			config_file_path?: string
			custom_oidc_v2?: [...close({
				authorisation_endpoint?:        string
				certification_uri?:             string
				client_credential_method?:      string
				client_id?:                     string
				client_secret_setting_name?:    string
				issuer_endpoint?:               string
				name?:                          string
				name_claim_type?:               string
				openid_configuration_endpoint?: string
				scopes?: [...string]
				token_endpoint?: string
			})]
			default_provider?: string
			excluded_paths?: [...string]
			facebook_v2?: [...close({
				app_id?:                  string
				app_secret_setting_name?: string
				graph_api_version?:       string
				login_scopes?: [...string]
			})]
			forward_proxy_convention?:                string
			forward_proxy_custom_host_header_name?:   string
			forward_proxy_custom_scheme_header_name?: string
			github_v2?: [...close({
				client_id?:                  string
				client_secret_setting_name?: string
				login_scopes?: [...string]
			})]
			google_v2?: [...close({
				allowed_audiences?: [...string]
				client_id?:                  string
				client_secret_setting_name?: string
				login_scopes?: [...string]
			})]
			http_route_api_prefix?: string
			login?: [...close({
				allowed_external_redirect_urls?: [...string]
				cookie_expiration_convention?:      string
				cookie_expiration_time?:            string
				logout_endpoint?:                   string
				nonce_expiration_time?:             string
				preserve_url_fragments_for_logins?: bool
				token_refresh_extension_time?:      number
				token_store_enabled?:               bool
				token_store_path?:                  string
				token_store_sas_setting_name?:      string
				validate_nonce?:                    bool
			})]
			microsoft_v2?: [...close({
				allowed_audiences?: [...string]
				client_id?:                  string
				client_secret_setting_name?: string
				login_scopes?: [...string]
			})]
			require_authentication?: bool
			require_https?:          bool
			runtime_version?:        string
			twitter_v2?: [...close({
				consumer_key?:                 string
				consumer_secret_setting_name?: string
			})]
			unauthenticated_action?: string
		})]
		backup?: [...close({
			enabled?: bool
			name?:    string
			schedule?: [...close({
				frequency_interval?:       number
				frequency_unit?:           string
				keep_at_least_one_backup?: bool
				last_execution_time?:      string
				retention_period_days?:    number
				start_time?:               string
			})]
			storage_account_url?: string
		})]
		builtin_logging_enabled?:    bool
		client_certificate_enabled?: bool

		// Paths to exclude when using client certificates, separated by ;
		client_certificate_exclusion_paths?: string
		client_certificate_mode?:            string
		timeouts?:                           #timeouts
		connection_string?: [...close({
			name?:  string
			type?:  string
			value?: string
		})]
		content_share_force_disabled?:             bool
		custom_domain_verification_id?:            string
		daily_memory_time_quota?:                  number
		default_hostname?:                         string
		enabled?:                                  bool
		ftp_publish_basic_authentication_enabled?: bool
		functions_extension_version?:              string
		hosting_environment_id?:                   string
		https_only?:                               bool
		id?:                                       string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		kind?:     string
		location?: string
		name!:     string
		outbound_ip_address_list?: [...string]
		outbound_ip_addresses?: string
		possible_outbound_ip_address_list?: [...string]
		possible_outbound_ip_addresses?: string
		public_network_access_enabled?:  bool
		resource_group_name!:            string
		service_plan_id?:                string
		site_config?: [...close({
			always_on?:             bool
			api_definition_url?:    string
			api_management_api_id?: string
			app_command_line?:      string
			app_scale_limit?:       number
			app_service_logs?: [...close({
				disk_quota_mb?:         number
				retention_period_days?: number
			})]
			application_insights_connection_string?: string
			application_insights_key?:               string
			application_stack?: [...close({
				dotnet_version?:              string
				java_version?:                string
				node_version?:                string
				powershell_core_version?:     string
				use_custom_runtime?:          bool
				use_dotnet_isolated_runtime?: bool
			})]
			cors?: [...close({
				allowed_origins?: [...string]
				support_credentials?: bool
			})]
			default_documents?: [...string]
			detailed_error_logging_enabled?:    bool
			elastic_instance_minimum?:          number
			ftps_state?:                        string
			health_check_eviction_time_in_min?: number
			health_check_path?:                 string
			http2_enabled?:                     bool
			ip_restriction?: [...close({
				action?:      string
				description?: string
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
			ip_restriction_default_action?:    string
			load_balancing_mode?:              string
			managed_pipeline_mode?:            string
			minimum_tls_version?:              string
			pre_warmed_instance_count?:        number
			remote_debugging_enabled?:         bool
			remote_debugging_version?:         string
			runtime_scale_monitoring_enabled?: bool
			scm_ip_restriction?: [...close({
				action?:      string
				description?: string
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
			scm_ip_restriction_default_action?: string
			scm_minimum_tls_version?:           string
			scm_type?:                          string
			scm_use_main_ip_restriction?:       bool
			use_32_bit_worker?:                 bool
			vnet_route_all_enabled?:            bool
			websockets_enabled?:                bool
			windows_fx_version?:                string
			worker_count?:                      number
		})]
		site_credential?: [...close({
			name?:     string
			password?: string
		})]

		// The Key Vault Secret ID, including version, that contains the
		// Connection String used to connect to the storage account for
		// this Function App.
		storage_key_vault_secret_id?: string
		sticky_settings?: [...close({
			app_setting_names?: [...string]
			connection_string_names?: [...string]
		})]
		storage_account_access_key?:    string
		storage_account_name?:          string
		storage_uses_managed_identity?: bool
		tags?: [string]: string
		virtual_network_backup_restore_enabled?:         bool
		virtual_network_subnet_id?:                      string
		webdeploy_publish_basic_authentication_enabled?: bool
	})

	#timeouts: close({
		read?: string
	})
}
