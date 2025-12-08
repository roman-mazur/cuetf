package res

import "list"

#azurerm_spring_cloud_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_service")
	close({
		build_agent_pool_size?:              string
		id?:                                 string
		location!:                           string
		log_stream_public_endpoint_enabled?: bool
		managed_environment_id?:             string
		name!:                               string
		outbound_public_ip_addresses?: [...string]
		required_network_traffic_rules?: [...close({
			direction?: string
			fqdns?: [...string]
			ip_addresses?: [...string]
			port?:     number
			protocol?: string
		})]
		resource_group_name!:      string
		service_registry_enabled?: bool
		config_server_git_setting?: matchN(1, [#config_server_git_setting, list.MaxItems(1) & [...#config_server_git_setting]])
		container_registry?: matchN(1, [#container_registry, [...#container_registry]])
		default_build_service?: matchN(1, [#default_build_service, list.MaxItems(1) & [...#default_build_service]])
		service_registry_id?: string
		marketplace?: matchN(1, [#marketplace, list.MaxItems(1) & [...#marketplace]])
		sku_name?: string
		sku_tier?: string
		tags?: [string]: string
		network?: matchN(1, [#network, list.MaxItems(1) & [...#network]])
		timeouts?:       #timeouts
		zone_redundant?: bool
		trace?: matchN(1, [#trace, list.MaxItems(1) & [...#trace]])
	})

	#config_server_git_setting: close({
		http_basic_auth?: matchN(1, [_#defs."/$defs/config_server_git_setting/$defs/http_basic_auth", list.MaxItems(1) & [..._#defs."/$defs/config_server_git_setting/$defs/http_basic_auth"]])
		repository?: matchN(1, [_#defs."/$defs/config_server_git_setting/$defs/repository", [..._#defs."/$defs/config_server_git_setting/$defs/repository"]])
		ssh_auth?: matchN(1, [_#defs."/$defs/config_server_git_setting/$defs/ssh_auth", list.MaxItems(1) & [..._#defs."/$defs/config_server_git_setting/$defs/ssh_auth"]])
		label?: string
		search_paths?: [...string]
		uri!: string
	})

	#container_registry: close({
		name!:     string
		password!: string
		server!:   string
		username!: string
	})

	#default_build_service: close({
		container_registry_name?: string
	})

	#marketplace: close({
		plan!:      string
		product!:   string
		publisher!: string
	})

	#network: close({
		app_network_resource_group?: string
		app_subnet_id!:              string
		cidr_ranges!: [...string]
		outbound_type?:                          string
		read_timeout_seconds?:                   number
		service_runtime_network_resource_group?: string
		service_runtime_subnet_id!:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#trace: close({
		connection_string?: string
		sample_rate?:       number
	})

	_#defs: "/$defs/config_server_git_setting/$defs/http_basic_auth": close({
		password!: string
		username!: string
	})

	_#defs: "/$defs/config_server_git_setting/$defs/repository": close({
		http_basic_auth?: matchN(1, [_#defs."/$defs/config_server_git_setting/$defs/repository/$defs/http_basic_auth", list.MaxItems(1) & [..._#defs."/$defs/config_server_git_setting/$defs/repository/$defs/http_basic_auth"]])
		label?: string
		name!:  string
		pattern?: [...string]
		search_paths?: [...string]
		uri!: string
		ssh_auth?: matchN(1, [_#defs."/$defs/config_server_git_setting/$defs/repository/$defs/ssh_auth", list.MaxItems(1) & [..._#defs."/$defs/config_server_git_setting/$defs/repository/$defs/ssh_auth"]])
	})

	_#defs: "/$defs/config_server_git_setting/$defs/repository/$defs/http_basic_auth": close({
		password!: string
		username!: string
	})

	_#defs: "/$defs/config_server_git_setting/$defs/repository/$defs/ssh_auth": close({
		host_key?:                         string
		host_key_algorithm?:               string
		private_key!:                      string
		strict_host_key_checking_enabled?: bool
	})

	_#defs: "/$defs/config_server_git_setting/$defs/ssh_auth": close({
		host_key?:                         string
		host_key_algorithm?:               string
		private_key!:                      string
		strict_host_key_checking_enabled?: bool
	})
}
