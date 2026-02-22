package res

import "list"

#azurerm_data_factory_linked_service_azure_databricks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_linked_service_azure_databricks")
	close({
		access_token?: string
		adb_domain!:   string
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!:     string
		description?:         string
		existing_cluster_id?: string
		instance_pool?: matchN(1, [#instance_pool, list.MaxItems(1) & [...#instance_pool]])
		key_vault_password?: matchN(1, [#key_vault_password, list.MaxItems(1) & [...#key_vault_password]])
		new_cluster_config?: matchN(1, [#new_cluster_config, list.MaxItems(1) & [...#new_cluster_config]])
		id?:                       string
		integration_runtime_name?: string
		msi_workspace_id?:         string
		name!:                     string
		parameters?: [string]: string
		timeouts?: #timeouts
	})

	#instance_pool: close({
		cluster_version!:       string
		instance_pool_id!:      string
		max_number_of_workers?: number
		min_number_of_workers?: number
	})

	#key_vault_password: close({
		linked_service_name!: string
		secret_name!:         string
	})

	#new_cluster_config: close({
		cluster_version!: string
		custom_tags?: [string]: string
		driver_node_type?: string
		init_scripts?: [...string]
		log_destination?:       string
		max_number_of_workers?: number
		min_number_of_workers?: number
		node_type!:             string
		spark_config?: [string]:                string
		spark_environment_variables?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
