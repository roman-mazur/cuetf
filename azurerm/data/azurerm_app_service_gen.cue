package data

#azurerm_app_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_app_service")
	close({
		app_service_plan_id?: string
		timeouts?:            #timeouts
		app_settings?: [string]: string
		client_affinity_enabled?: bool
		client_cert_enabled?:     bool
		connection_string?: [...close({
			name?:  string
			type?:  string
			value?: string
		})]
		custom_domain_verification_id?: string
		default_site_hostname?:         string
		enabled?:                       bool
		https_only?:                    bool
		id?:                            string
		location?:                      string
		name!:                          string
		outbound_ip_address_list?: [...string]
		outbound_ip_addresses?: string
		possible_outbound_ip_address_list?: [...string]
		possible_outbound_ip_addresses?: string
		resource_group_name!:            string
		site_config?: [...close({
			acr_use_managed_identity_credentials?: bool
			acr_user_managed_identity_client_id?:  string
			always_on?:                            bool
			app_command_line?:                     string
			cors?: [...close({
				allowed_origins?: [...string]
				support_credentials?: bool
			})]
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
			scm_type?:                    string
			scm_use_main_ip_restriction?: bool
			use_32_bit_worker_process?:   bool
			vnet_route_all_enabled?:      bool
			websockets_enabled?:          bool
			windows_fx_version?:          string
		})]
		site_credential?: [...close({
			password?: string
			username?: string
		})]
		source_control?: [...close({
			branch?:             string
			manual_integration?: bool
			repo_url?:           string
			rollback_enabled?:   bool
			use_mercurial?:      bool
		})]
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
