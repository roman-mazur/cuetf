package data

#azurerm_linux_web_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_linux_web_app")
	close({
		app_metadata?: [string]: string
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
		availability?: string
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
		client_affinity_enabled?:    bool
		client_certificate_enabled?: bool

		// Paths to exclude when using client certificates, separated by ;
		client_certificate_exclusion_paths?: string
		client_certificate_mode?:            string
		connection_string?: [...close({
			name?:  string
			type?:  string
			value?: string
		})]
		custom_domain_verification_id?:            string
		default_hostname?:                         string
		enabled?:                                  bool
		ftp_publish_basic_authentication_enabled?: bool
		hosting_environment_id?:                   string
		https_only?:                               bool
		id?:                                       string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		key_vault_reference_identity_id?: string
		kind?:                            string
		timeouts?:                        #timeouts
		location?:                        string
		logs?: [...close({
			application_logs?: [...close({
				azure_blob_storage?: [...close({
					level?:             string
					retention_in_days?: number
					sas_url?:           string
				})]
				file_system_level?: string
			})]
			detailed_error_messages?: bool
			failed_request_tracing?:  bool
			http_logs?: [...close({
				azure_blob_storage?: [...close({
					retention_in_days?: number
					sas_url?:           string
				})]
				file_system?: [...close({
					retention_in_days?: number
					retention_in_mb?:   number
				})]
			})]
		})]
		name!: string
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
			application_stack?: [...close({
				docker_image_name?:        string
				docker_registry_password?: string
				docker_registry_url?:      string
				docker_registry_username?: string
				dotnet_version?:           string
				go_version?:               string
				java_server?:              string
				java_server_version?:      string
				java_version?:             string
				node_version?:             string
				php_version?:              string
				python_version?:           string
				ruby_version?:             string
			})]
			auto_heal_setting?: [...close({
				action?: [...close({
					action_type?:                    string
					minimum_process_execution_time?: string
				})]
				trigger?: [...close({
					requests?: [...close({
						count?:    number
						interval?: string
					})]
					slow_request?: [...close({
						count?:      number
						interval?:   string
						time_taken?: string
					})]
					slow_request_with_path?: [...close({
						count?:      number
						interval?:   string
						path?:       string
						time_taken?: string
					})]
					status_code?: [...close({
						count?:             number
						interval?:          string
						path?:              string
						status_code_range?: string
						sub_status?:        number
						win32_status_code?: number
					})]
				})]
			})]
			container_registry_managed_identity_client_id?: string
			container_registry_use_managed_identity?:       bool
			cors?: [...close({
				allowed_origins?: [...string]
				support_credentials?: bool
			})]
			default_documents?: [...string]
			detailed_error_logging_enabled?:    bool
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
			ip_restriction_default_action?: string
			linux_fx_version?:              string
			load_balancing_mode?:           string
			local_mysql_enabled?:           bool
			managed_pipeline_mode?:         string
			minimum_tls_version?:           string
			remote_debugging_enabled?:      bool
			remote_debugging_version?:      string
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
			worker_count?:                      number
		})]
		site_credential?: [...close({
			name?:     string
			password?: string
		})]
		sticky_settings?: [...close({
			app_setting_names?: [...string]
			connection_string_names?: [...string]
		})]
		storage_account?: [...close({
			access_key?:   string
			account_name?: string
			mount_path?:   string
			name?:         string
			share_name?:   string
			type?:         string
		})]
		tags?: [string]: string
		usage?:                                          string
		virtual_network_backup_restore_enabled?:         bool
		virtual_network_subnet_id?:                      string
		webdeploy_publish_basic_authentication_enabled?: bool
	})

	#timeouts: close({
		read?: string
	})
}
