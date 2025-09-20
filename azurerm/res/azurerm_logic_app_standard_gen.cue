package res

import "list"

#azurerm_logic_app_standard: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_logic_app_standard")
	close({
		app_service_plan_id!: string
		app_settings?: [string]: string
		bundle_version?:                           string
		client_affinity_enabled?:                  bool
		client_certificate_mode?:                  string
		custom_domain_verification_id?:            string
		default_hostname?:                         string
		enabled?:                                  bool
		ftp_publish_basic_authentication_enabled?: bool
		https_only?:                               bool
		id?:                                       string
		kind?:                                     string
		location!:                                 string
		name!:                                     string
		outbound_ip_addresses?:                    string
		connection_string?: matchN(1, [#connection_string, [...#connection_string]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		site_config?: matchN(1, [#site_config, list.MaxItems(1) & [...#site_config]])
		possible_outbound_ip_addresses?:           string
		public_network_access?:                    string
		resource_group_name!:                      string
		scm_publish_basic_authentication_enabled?: bool
		site_credential?: [...close({
			password?: string
			username?: string
		})]
		storage_account_access_key!: string
		storage_account_name!:       string
		storage_account_share_name?: string
		tags?: [string]: string
		use_extension_bundle?:       bool
		version?:                    string
		virtual_network_subnet_id?:  string
		vnet_content_share_enabled?: bool
		timeouts?:                   #timeouts
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
		linux_fx_version?:         string
		min_tls_version?:          string
		cors?: matchN(1, [_#defs."/$defs/site_config/$defs/cors", list.MaxItems(1) & [..._#defs."/$defs/site_config/$defs/cors"]])
		ip_restriction?: matchN(1, [_#defs."/$defs/site_config/$defs/ip_restriction", [..._#defs."/$defs/site_config/$defs/ip_restriction"]])
		pre_warmed_instance_count?:        number
		runtime_scale_monitoring_enabled?: bool
		scm_min_tls_version?:              string
		scm_ip_restriction?: matchN(1, [_#defs."/$defs/site_config/$defs/scm_ip_restriction", [..._#defs."/$defs/site_config/$defs/scm_ip_restriction"]])
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

	_#defs: "/$defs/site_config/$defs/cors": close({
		// Specifies a list of origins that should be allowed to make
		// cross-origin calls.
		allowed_origins?: [...string]

		// Are credentials allowed in CORS requests? Defaults to `false`.
		support_credentials?: bool
	})

	_#defs: "/$defs/site_config/$defs/ip_restriction": close({
		// The action to take. Possible values are `Allow` or `Deny`.
		action?: string

		// The description of the IP restriction rule.
		description?: string

		// The CIDR notation of the IP or IP Range to match. For example:
		// `10.0.0.0/24` or `192.168.10.1/32` or `fe80::/64` or
		// `13.107.6.152/31,13.107.128.0/22`
		ip_address?: string

		// The name which should be used for this `ip_restriction`.
		name?: string

		// The priority value of this `ip_restriction`.
		priority?: number
		headers?: [...close({
			x_azure_fdid?: [...string]
			x_fd_health_probe?: [...string]
			x_forwarded_for?: [...string]
			x_forwarded_host?: [...string]
		})]

		// The Service Tag used for this IP Restriction.
		service_tag?: string

		// The Virtual Network Subnet ID used for this IP Restriction.
		virtual_network_subnet_id?: string
	})

	_#defs: "/$defs/site_config/$defs/scm_ip_restriction": close({
		// The action to take. Possible values are `Allow` or `Deny`.
		action?: string

		// The description of the IP restriction rule.
		description?: string

		// The CIDR notation of the IP or IP Range to match. For example:
		// `10.0.0.0/24` or `192.168.10.1/32` or `fe80::/64` or
		// `13.107.6.152/31,13.107.128.0/22`
		ip_address?: string

		// The name which should be used for this `ip_restriction`.
		name?: string

		// The priority value of this `ip_restriction`.
		priority?: number
		headers?: [...close({
			x_azure_fdid?: [...string]
			x_fd_health_probe?: [...string]
			x_forwarded_for?: [...string]
			x_forwarded_host?: [...string]
		})]

		// The Service Tag used for this IP Restriction.
		service_tag?: string

		// The Virtual Network Subnet ID used for this IP Restriction.
		virtual_network_subnet_id?: string
	})
}
