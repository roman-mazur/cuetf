package data

#azurerm_application_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_application_gateway")
	close({
		authentication_certificate?: [...close({
			id?:   string
			name?: string
		})]
		autoscale_configuration?: [...close({
			max_capacity?: number
			min_capacity?: number
		})]
		backend_address_pool?: [...close({
			fqdns?: [...string]
			id?: string
			ip_addresses?: [...string]
			name?: string
		})]
		backend_http_settings?: [...close({
			affinity_cookie_name?: string
			authentication_certificate?: [...close({
				id?:   string
				name?: string
			})]
			connection_draining?: [...close({
				drain_timeout_sec?: number
				enabled?:           bool
			})]
			cookie_based_affinity?:               string
			host_name?:                           string
			id?:                                  string
			name?:                                string
			path?:                                string
			pick_host_name_from_backend_address?: bool
			port?:                                number
			probe_id?:                            string
			probe_name?:                          string
			protocol?:                            string
			request_timeout?:                     number
			trusted_root_certificate_names?: [...string]
		})]
		custom_error_configuration?: [...close({
			custom_error_page_url?: string
			id?:                    string
			status_code?:           string
		})]
		fips_enabled?:                      bool
		firewall_policy_id?:                string
		force_firewall_policy_association?: bool
		frontend_ip_configuration?: [...close({
			id?:                              string
			name?:                            string
			private_ip_address?:              string
			private_ip_address_allocation?:   string
			private_link_configuration_id?:   string
			private_link_configuration_name?: string
			public_ip_address_id?:            string
			subnet_id?:                       string
		})]
		frontend_port?: [...close({
			id?:   string
			name?: string
			port?: number
		})]
		gateway_ip_configuration?: [...close({
			id?:        string
			name?:      string
			subnet_id?: string
		})]
		global?: [...close({
			request_buffering_enabled?:  bool
			response_buffering_enabled?: bool
		})]
		http2_enabled?: bool
		http_listener?: [...close({
			custom_error_configuration?: [...close({
				custom_error_page_url?: string
				id?:                    string
				status_code?:           string
			})]
			firewall_policy_id?:             string
			frontend_ip_configuration_id?:   string
			frontend_ip_configuration_name?: string
			frontend_port_id?:               string
			frontend_port_name?:             string
			host_name?:                      string
			host_names?: [...string]
			id?:                   string
			name?:                 string
			protocol?:             string
			require_sni?:          bool
			ssl_certificate_id?:   string
			ssl_certificate_name?: string
			ssl_profile_id?:       string
			ssl_profile_name?:     string
		})]
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?: string
		name!:     string
		private_endpoint_connection?: [...close({
			id?:   string
			name?: string
		})]
		private_link_configuration?: [...close({
			id?: string
			ip_configuration?: [...close({
				name?:                          string
				primary?:                       bool
				private_ip_address?:            string
				private_ip_address_allocation?: string
				subnet_id?:                     string
			})]
			name?: string
		})]
		probe?: [...close({
			host?:     string
			id?:       string
			interval?: number
			match?: [...close({
				body?: string
				status_code?: [...string]
			})]
			minimum_servers?:                           number
			name?:                                      string
			path?:                                      string
			pick_host_name_from_backend_http_settings?: bool
			port?:                                      number
			protocol?:                                  string
			timeout?:                                   number
			unhealthy_threshold?:                       number
		})]
		redirect_configuration?: [...close({
			id?:                   string
			include_path?:         bool
			include_query_string?: bool
			name?:                 string
			redirect_type?:        string
			target_listener_id?:   string
			target_listener_name?: string
			target_url?:           string
		})]
		request_routing_rule?: [...close({
			backend_address_pool_id?:     string
			backend_address_pool_name?:   string
			backend_http_settings_id?:    string
			backend_http_settings_name?:  string
			http_listener_id?:            string
			http_listener_name?:          string
			id?:                          string
			name?:                        string
			priority?:                    number
			redirect_configuration_id?:   string
			redirect_configuration_name?: string
			rewrite_rule_set_id?:         string
			rewrite_rule_set_name?:       string
			rule_type?:                   string
			url_path_map_id?:             string
			url_path_map_name?:           string
		})]
		resource_group_name!: string
		rewrite_rule_set?: [...close({
			id?:   string
			name?: string
			rewrite_rule?: [...close({
				condition?: [...close({
					ignore_case?: bool
					negate?:      bool
					pattern?:     string
					variable?:    string
				})]
				name?: string
				request_header_configuration?: [...close({
					header_name?:  string
					header_value?: string
				})]
				response_header_configuration?: [...close({
					header_name?:  string
					header_value?: string
				})]
				rule_sequence?: number
				url?: [...close({
					components?:   string
					path?:         string
					query_string?: string
					reroute?:      bool
				})]
			})]
		})]
		sku?: [...close({
			capacity?: number
			name?:     string
			tier?:     string
		})]
		ssl_certificate?: [...close({
			id?:                  string
			key_vault_secret_id?: string
			name?:                string
			public_cert_data?:    string
		})]
		timeouts?: #timeouts
		ssl_policy?: [...close({
			cipher_suites?: [...string]
			disabled_protocols?: [...string]
			min_protocol_version?: string
			policy_name?:          string
			policy_type?:          string
		})]
		ssl_profile?: [...close({
			id?:   string
			name?: string
			ssl_policy?: [...close({
				cipher_suites?: [...string]
				disabled_protocols?: [...string]
				min_protocol_version?: string
				policy_name?:          string
				policy_type?:          string
			})]
			trusted_client_certificate_names?: [...string]
			verify_client_certificate_issuer_dn?:  bool
			verify_client_certificate_revocation?: string
		})]
		tags?: [string]: string
		trusted_client_certificate?: [...close({
			data?: string
			id?:   string
			name?: string
		})]
		trusted_root_certificate?: [...close({
			id?:                  string
			key_vault_secret_id?: string
			name?:                string
		})]
		url_path_map?: [...close({
			default_backend_address_pool_id?:     string
			default_backend_address_pool_name?:   string
			default_backend_http_settings_id?:    string
			default_backend_http_settings_name?:  string
			default_redirect_configuration_id?:   string
			default_redirect_configuration_name?: string
			default_rewrite_rule_set_id?:         string
			default_rewrite_rule_set_name?:       string
			id?:                                  string
			name?:                                string
			path_rule?: [...close({
				backend_address_pool_id?:    string
				backend_address_pool_name?:  string
				backend_http_settings_id?:   string
				backend_http_settings_name?: string
				firewall_policy_id?:         string
				id?:                         string
				name?:                       string
				paths?: [...string]
				redirect_configuration_id?:   string
				redirect_configuration_name?: string
				rewrite_rule_set_id?:         string
				rewrite_rule_set_name?:       string
			})]
		})]
		waf_configuration?: [...close({
			disabled_rule_group?: [...close({
				rule_group_name?: string
				rules?: [...number]
			})]
			enabled?: bool
			exclusion?: [...close({
				match_variable?:          string
				selector?:                string
				selector_match_operator?: string
			})]
			file_upload_limit_mb?:     number
			firewall_mode?:            string
			max_request_body_size_kb?: number
			request_body_check?:       bool
			rule_set_type?:            string
			rule_set_version?:         string
		})]
		zones?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
