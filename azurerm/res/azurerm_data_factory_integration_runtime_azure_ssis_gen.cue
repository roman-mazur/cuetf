package res

import "list"

#azurerm_data_factory_integration_runtime_azure_ssis: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_integration_runtime_azure_ssis")
	close({
		credential_name?:                  string
		data_factory_id!:                  string
		description?:                      string
		edition?:                          string
		id?:                               string
		license_type?:                     string
		location!:                         string
		max_parallel_executions_per_node?: number
		name!:                             string
		node_size!:                        string
		number_of_nodes?:                  number
		catalog_info?: matchN(1, [#catalog_info, list.MaxItems(1) & [...#catalog_info]])
		copy_compute_scale?: matchN(1, [#copy_compute_scale, list.MaxItems(1) & [...#copy_compute_scale]])
		custom_setup_script?: matchN(1, [#custom_setup_script, list.MaxItems(1) & [...#custom_setup_script]])
		express_custom_setup?: matchN(1, [#express_custom_setup, list.MaxItems(1) & [...#express_custom_setup]])
		express_vnet_integration?: matchN(1, [#express_vnet_integration, list.MaxItems(1) & [...#express_vnet_integration]])
		package_store?: matchN(1, [#package_store, [...#package_store]])
		pipeline_external_compute_scale?: matchN(1, [#pipeline_external_compute_scale, list.MaxItems(1) & [...#pipeline_external_compute_scale]])
		proxy?: matchN(1, [#proxy, list.MaxItems(1) & [...#proxy]])
		timeouts?: #timeouts
		vnet_integration?: matchN(1, [#vnet_integration, list.MaxItems(1) & [...#vnet_integration]])
	})

	#catalog_info: close({
		administrator_login?:    string
		administrator_password?: string
		dual_standby_pair_name?: string
		elastic_pool_name?:      string
		pricing_tier?:           string
		server_endpoint!:        string
	})

	#copy_compute_scale: close({
		data_integration_unit?: number
		time_to_live?:          number
	})

	#custom_setup_script: close({
		blob_container_uri!: string
		sas_token!:          string
	})

	#express_custom_setup: close({
		command_key?: matchN(1, [_#defs."/$defs/express_custom_setup/$defs/command_key", [..._#defs."/$defs/express_custom_setup/$defs/command_key"]])
		component?: matchN(1, [_#defs."/$defs/express_custom_setup/$defs/component", [..._#defs."/$defs/express_custom_setup/$defs/component"]])
		environment?: [string]: string
		powershell_version?: string
	})

	#express_vnet_integration: close({
		subnet_id!: string
	})

	#package_store: close({
		linked_service_name!: string
		name!:                string
	})

	#pipeline_external_compute_scale: close({
		number_of_external_nodes?: number
		number_of_pipeline_nodes?: number
		time_to_live?:             number
	})

	#proxy: close({
		path?:                                 string
		self_hosted_integration_runtime_name!: string
		staging_storage_linked_service_name!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#vnet_integration: close({
		public_ips?: [...string]
		subnet_id?:   string
		subnet_name?: string
		vnet_id?:     string
	})

	_#defs: "/$defs/express_custom_setup/$defs/command_key": close({
		key_vault_password?: matchN(1, [_#defs."/$defs/express_custom_setup/$defs/command_key/$defs/key_vault_password", list.MaxItems(1) & [..._#defs."/$defs/express_custom_setup/$defs/command_key/$defs/key_vault_password"]])
		password?:    string
		target_name!: string
		user_name!:   string
	})

	_#defs: "/$defs/express_custom_setup/$defs/command_key/$defs/key_vault_password": close({
		linked_service_name!: string
		parameters?: [string]: string
		secret_name!:    string
		secret_version?: string
	})

	_#defs: "/$defs/express_custom_setup/$defs/component": close({
		key_vault_license?: matchN(1, [_#defs."/$defs/express_custom_setup/$defs/component/$defs/key_vault_license", list.MaxItems(1) & [..._#defs."/$defs/express_custom_setup/$defs/component/$defs/key_vault_license"]])
		license?: string
		name!:    string
	})

	_#defs: "/$defs/express_custom_setup/$defs/component/$defs/key_vault_license": close({
		linked_service_name!: string
		parameters?: [string]: string
		secret_name!:    string
		secret_version?: string
	})
}
