package res

import "list"

#azurerm_machine_learning_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_machine_learning_workspace")
	close({
		application_insights_id!:  string
		container_registry_id?:    string
		description?:              string
		discovery_url?:            string
		friendly_name?:            string
		high_business_impact?:     bool
		id?:                       string
		image_build_compute_name?: string
		encryption?: matchN(1, [#encryption, list.MaxItems(1) & [...#encryption]])
		key_vault_id!:                   string
		kind?:                           string
		location!:                       string
		name!:                           string
		primary_user_assigned_identity?: string
		feature_store?: matchN(1, [#feature_store, list.MaxItems(1) & [...#feature_store]])
		public_network_access_enabled?: bool
		identity?: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		resource_group_name!:             string
		service_side_encryption_enabled?: bool
		sku_name?:                        string
		storage_account_id!:              string
		tags?: [string]: string
		managed_network?: matchN(1, [#managed_network, list.MaxItems(1) & [...#managed_network]])
		serverless_compute?: matchN(1, [#serverless_compute, list.MaxItems(1) & [...#serverless_compute]])
		timeouts?:               #timeouts
		v1_legacy_mode_enabled?: bool
		workspace_id?:           string
	})

	#encryption: close({
		key_id!:                    string
		key_vault_id!:              string
		user_assigned_identity_id?: string
	})

	#feature_store: close({
		computer_spark_runtime_version?: string
		offline_connection_name?:        string
		online_connection_name?:         string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#managed_network: close({
		isolation_mode?:                string
		provision_on_creation_enabled?: bool
	})

	#serverless_compute: close({
		public_ip_enabled?: bool
		subnet_id?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
