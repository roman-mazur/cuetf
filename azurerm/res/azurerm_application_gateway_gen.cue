package res

import "list"

#azurerm_application_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_application_gateway")
	close({
		authentication_certificate?: matchN(1, [#authentication_certificate, [...#authentication_certificate]])
		autoscale_configuration?: matchN(1, [#autoscale_configuration, list.MaxItems(1) & [...#autoscale_configuration]])
		enable_http2?:                      bool
		fips_enabled?:                      bool
		firewall_policy_id?:                string
		force_firewall_policy_association?: bool
		id?:                                string
		location!:                          string
		name!:                              string
		backend_address_pool!: matchN(1, [#backend_address_pool, [_, ...] & [...#backend_address_pool]])
		private_endpoint_connection?: [...close({
			id?:   string
			name?: string
		})]
		resource_group_name!: string
		tags?: [string]: string
		backend_http_settings!: matchN(1, [#backend_http_settings, [_, ...] & [...#backend_http_settings]])
		custom_error_configuration?: matchN(1, [#custom_error_configuration, [...#custom_error_configuration]])
		frontend_ip_configuration!: matchN(1, [#frontend_ip_configuration, [_, ...] & [...#frontend_ip_configuration]])
		frontend_port!: matchN(1, [#frontend_port, [_, ...] & [...#frontend_port]])
		gateway_ip_configuration!: matchN(1, [#gateway_ip_configuration, list.MaxItems(2) & [_, ...] & [...#gateway_ip_configuration]])
		global?: matchN(1, [#global, list.MaxItems(1) & [...#global]])
		http_listener!: matchN(1, [#http_listener, [_, ...] & [...#http_listener]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		private_link_configuration?: matchN(1, [#private_link_configuration, [...#private_link_configuration]])
		probe?: matchN(1, [#probe, [...#probe]])
		redirect_configuration?: matchN(1, [#redirect_configuration, [...#redirect_configuration]])
		request_routing_rule!: matchN(1, [#request_routing_rule, [_, ...] & [...#request_routing_rule]])
		zones?: [...string]
		rewrite_rule_set?: matchN(1, [#rewrite_rule_set, [...#rewrite_rule_set]])
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		ssl_certificate?: matchN(1, [#ssl_certificate, [...#ssl_certificate]])
		ssl_policy?: matchN(1, [#ssl_policy, list.MaxItems(1) & [...#ssl_policy]])
		ssl_profile?: matchN(1, [#ssl_profile, [...#ssl_profile]])
		timeouts?: #timeouts
		trusted_client_certificate?: matchN(1, [#trusted_client_certificate, [...#trusted_client_certificate]])
		trusted_root_certificate?: matchN(1, [#trusted_root_certificate, [...#trusted_root_certificate]])
		url_path_map?: matchN(1, [#url_path_map, [...#url_path_map]])
		waf_configuration?: matchN(1, [#waf_configuration, list.MaxItems(1) & [...#waf_configuration]])
	})

	#authentication_certificate: close({
		data!: string
		id?:   string
		name!: string
	})

	#autoscale_configuration: close({
		max_capacity?: number
		min_capacity!: number
	})

	#backend_address_pool: close({
		fqdns?: [...string]
		id?: string
		ip_addresses?: [...string]
		name!: string
	})

	#backend_http_settings: close({
		affinity_cookie_name?:                 string
		cookie_based_affinity!:                string
		dedicated_backend_connection_enabled?: bool
		host_name?:                            string
		id?:                                   string
		name!:                                 string
		path?:                                 string
		pick_host_name_from_backend_address?:  bool
		authentication_certificate?: matchN(1, [_#defs."/$defs/backend_http_settings/$defs/authentication_certificate", [..._#defs."/$defs/backend_http_settings/$defs/authentication_certificate"]])
		port!:       number
		probe_id?:   string
		probe_name?: string
		connection_draining?: matchN(1, [_#defs."/$defs/backend_http_settings/$defs/connection_draining", list.MaxItems(1) & [..._#defs."/$defs/backend_http_settings/$defs/connection_draining"]])
		protocol!:        string
		request_timeout?: number
		trusted_root_certificate_names?: [...string]
	})

	#custom_error_configuration: close({
		custom_error_page_url!: string
		id?:                    string
		status_code!:           string
	})

	#frontend_ip_configuration: close({
		id?:                              string
		name!:                            string
		private_ip_address?:              string
		private_ip_address_allocation?:   string
		private_link_configuration_id?:   string
		private_link_configuration_name?: string
		public_ip_address_id?:            string
		subnet_id?:                       string
	})

	#frontend_port: close({
		id?:   string
		name!: string
		port!: number
	})

	#gateway_ip_configuration: close({
		id?:        string
		name!:      string
		subnet_id!: string
	})

	#global: close({
		request_buffering_enabled!:  bool
		response_buffering_enabled!: bool
	})

	#http_listener: close({
		firewall_policy_id?:             string
		frontend_ip_configuration_id?:   string
		frontend_ip_configuration_name!: string
		frontend_port_id?:               string
		frontend_port_name!:             string
		host_name?:                      string
		host_names?: [...string]
		id?:                 string
		name!:               string
		protocol!:           string
		require_sni?:        bool
		ssl_certificate_id?: string
		custom_error_configuration?: matchN(1, [_#defs."/$defs/http_listener/$defs/custom_error_configuration", [..._#defs."/$defs/http_listener/$defs/custom_error_configuration"]])
		ssl_certificate_name?: string
		ssl_profile_id?:       string
		ssl_profile_name?:     string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#private_link_configuration: close({
		ip_configuration!: matchN(1, [_#defs."/$defs/private_link_configuration/$defs/ip_configuration", [_, ...] & [..._#defs."/$defs/private_link_configuration/$defs/ip_configuration"]])
		id?:   string
		name!: string
	})

	#probe: close({
		host?:                                      string
		id?:                                        string
		interval!:                                  number
		minimum_servers?:                           number
		name!:                                      string
		path!:                                      string
		pick_host_name_from_backend_http_settings?: bool
		port?:                                      number
		protocol!:                                  string
		match?: matchN(1, [_#defs."/$defs/probe/$defs/match", list.MaxItems(1) & [..._#defs."/$defs/probe/$defs/match"]])
		timeout!:             number
		unhealthy_threshold!: number
	})

	#redirect_configuration: close({
		id?:                   string
		include_path?:         bool
		include_query_string?: bool
		name!:                 string
		redirect_type!:        string
		target_listener_id?:   string
		target_listener_name?: string
		target_url?:           string
	})

	#request_routing_rule: close({
		backend_address_pool_id?:     string
		backend_address_pool_name?:   string
		backend_http_settings_id?:    string
		backend_http_settings_name?:  string
		http_listener_id?:            string
		http_listener_name!:          string
		id?:                          string
		name!:                        string
		priority?:                    number
		redirect_configuration_id?:   string
		redirect_configuration_name?: string
		rewrite_rule_set_id?:         string
		rewrite_rule_set_name?:       string
		rule_type!:                   string
		url_path_map_id?:             string
		url_path_map_name?:           string
	})

	#rewrite_rule_set: close({
		rewrite_rule?: matchN(1, [_#defs."/$defs/rewrite_rule_set/$defs/rewrite_rule", [..._#defs."/$defs/rewrite_rule_set/$defs/rewrite_rule"]])
		id?:   string
		name!: string
	})

	#sku: close({
		capacity?: number
		name!:     string
		tier!:     string
	})

	#ssl_certificate: close({
		data?:                string
		id?:                  string
		key_vault_secret_id?: string
		name!:                string
		password?:            string
		public_cert_data?:    string
	})

	#ssl_policy: close({
		cipher_suites?: [...string]
		disabled_protocols?: [...string]
		min_protocol_version?: string
		policy_name?:          string
		policy_type?:          string
	})

	#ssl_profile: close({
		ssl_policy?: matchN(1, [_#defs."/$defs/ssl_profile/$defs/ssl_policy", list.MaxItems(1) & [..._#defs."/$defs/ssl_profile/$defs/ssl_policy"]])
		id?:   string
		name!: string
		trusted_client_certificate_names?: [...string]
		verify_client_cert_issuer_dn?:         bool
		verify_client_certificate_revocation?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#trusted_client_certificate: close({
		data!: string
		id?:   string
		name!: string
	})

	#trusted_root_certificate: close({
		data?:                string
		id?:                  string
		key_vault_secret_id?: string
		name!:                string
	})

	#url_path_map: close({
		default_backend_address_pool_id?:     string
		default_backend_address_pool_name?:   string
		default_backend_http_settings_id?:    string
		default_backend_http_settings_name?:  string
		default_redirect_configuration_id?:   string
		default_redirect_configuration_name?: string
		default_rewrite_rule_set_id?:         string
		path_rule!: matchN(1, [_#defs."/$defs/url_path_map/$defs/path_rule", [_, ...] & [..._#defs."/$defs/url_path_map/$defs/path_rule"]])
		default_rewrite_rule_set_name?: string
		id?:                            string
		name!:                          string
	})

	#waf_configuration: close({
		disabled_rule_group?: matchN(1, [_#defs."/$defs/waf_configuration/$defs/disabled_rule_group", [..._#defs."/$defs/waf_configuration/$defs/disabled_rule_group"]])
		enabled!:                  bool
		file_upload_limit_mb?:     number
		firewall_mode!:            string
		max_request_body_size_kb?: number
		request_body_check?:       bool
		rule_set_type?:            string
		rule_set_version!:         string
		exclusion?: matchN(1, [_#defs."/$defs/waf_configuration/$defs/exclusion", [..._#defs."/$defs/waf_configuration/$defs/exclusion"]])
	})

	_#defs: "/$defs/backend_http_settings/$defs/authentication_certificate": close({
		id?:   string
		name!: string
	})

	_#defs: "/$defs/backend_http_settings/$defs/connection_draining": close({
		drain_timeout_sec!: number
		enabled!:           bool
	})

	_#defs: "/$defs/http_listener/$defs/custom_error_configuration": close({
		custom_error_page_url!: string
		id?:                    string
		status_code!:           string
	})

	_#defs: "/$defs/private_link_configuration/$defs/ip_configuration": close({
		name!:                          string
		primary!:                       bool
		private_ip_address?:            string
		private_ip_address_allocation!: string
		subnet_id!:                     string
	})

	_#defs: "/$defs/probe/$defs/match": close({
		body?: string
		status_code!: [...string]
	})

	_#defs: "/$defs/rewrite_rule_set/$defs/rewrite_rule": close({
		condition?: matchN(1, [_#defs."/$defs/rewrite_rule_set/$defs/rewrite_rule/$defs/condition", [..._#defs."/$defs/rewrite_rule_set/$defs/rewrite_rule/$defs/condition"]])
		request_header_configuration?: matchN(1, [_#defs."/$defs/rewrite_rule_set/$defs/rewrite_rule/$defs/request_header_configuration", [..._#defs."/$defs/rewrite_rule_set/$defs/rewrite_rule/$defs/request_header_configuration"]])
		response_header_configuration?: matchN(1, [_#defs."/$defs/rewrite_rule_set/$defs/rewrite_rule/$defs/response_header_configuration", [..._#defs."/$defs/rewrite_rule_set/$defs/rewrite_rule/$defs/response_header_configuration"]])
		url?: matchN(1, [_#defs."/$defs/rewrite_rule_set/$defs/rewrite_rule/$defs/url", list.MaxItems(1) & [..._#defs."/$defs/rewrite_rule_set/$defs/rewrite_rule/$defs/url"]])
		name!:          string
		rule_sequence!: number
	})

	_#defs: "/$defs/rewrite_rule_set/$defs/rewrite_rule/$defs/condition": close({
		ignore_case?: bool
		negate?:      bool
		pattern!:     string
		variable!:    string
	})

	_#defs: "/$defs/rewrite_rule_set/$defs/rewrite_rule/$defs/request_header_configuration": close({
		header_name!:  string
		header_value!: string
	})

	_#defs: "/$defs/rewrite_rule_set/$defs/rewrite_rule/$defs/response_header_configuration": close({
		header_name!:  string
		header_value!: string
	})

	_#defs: "/$defs/rewrite_rule_set/$defs/rewrite_rule/$defs/url": close({
		components?:   string
		path?:         string
		query_string?: string
		reroute?:      bool
	})

	_#defs: "/$defs/ssl_profile/$defs/ssl_policy": close({
		cipher_suites?: [...string]
		disabled_protocols?: [...string]
		min_protocol_version?: string
		policy_name?:          string
		policy_type?:          string
	})

	_#defs: "/$defs/url_path_map/$defs/path_rule": close({
		backend_address_pool_id?:    string
		backend_address_pool_name?:  string
		backend_http_settings_id?:   string
		backend_http_settings_name?: string
		firewall_policy_id?:         string
		id?:                         string
		name!:                       string
		paths!: [...string]
		redirect_configuration_id?:   string
		redirect_configuration_name?: string
		rewrite_rule_set_id?:         string
		rewrite_rule_set_name?:       string
	})

	_#defs: "/$defs/waf_configuration/$defs/disabled_rule_group": close({
		rule_group_name!: string
		rules?: [...number]
	})

	_#defs: "/$defs/waf_configuration/$defs/exclusion": close({
		match_variable!:          string
		selector?:                string
		selector_match_operator?: string
	})
}
