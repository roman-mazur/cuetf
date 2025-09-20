package data

#azurerm_logic_app_standard: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_logic_app_standard")
	close({
		app_service_plan_id?: string
		app_settings?: [string]: string
		bundle_version?:          string
		client_affinity_enabled?: bool
		client_certificate_mode?: string
		connection_string?: [...close({
			name?:  string
			type?:  string
			value?: string
		})]
		custom_domain_verification_id?:            string
		default_hostname?:                         string
		enabled?:                                  bool
		ftp_publish_basic_authentication_enabled?: bool
		https_only?:                               bool
		id?:                                       string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		kind?:                                     string
		location?:                                 string
		name!:                                     string
		outbound_ip_addresses?:                    string
		possible_outbound_ip_addresses?:           string
		public_network_access?:                    string
		resource_group_name!:                      string
		scm_publish_basic_authentication_enabled?: bool
		site_config?: [...close({
			always_on?:           bool
			app_scale_limit?:     number
			auto_swap_slot_name?: string
			cors?: [...close({
				allowed_origins?: [...string]
				support_credentials?: bool
			})]
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
			linux_fx_version?:                 string
			min_tls_version?:                  string
			pre_warmed_instance_count?:        number
			public_network_access_enabled?:    bool
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
			scm_min_tls_version?:         string
			scm_type?:                    string
			scm_use_main_ip_restriction?: bool
			use_32_bit_worker_process?:   bool
			vnet_route_all_enabled?:      bool
			websockets_enabled?:          bool
		})]
		site_credential?: [...close({
			password?: string
			username?: string
		})]
		storage_account_access_key?: string
		timeouts?:                   #timeouts
		storage_account_name?:       string
		storage_account_share_name?: string
		tags?: [string]: string
		use_extension_bundle?:      bool
		version?:                   string
		virtual_network_subnet_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
