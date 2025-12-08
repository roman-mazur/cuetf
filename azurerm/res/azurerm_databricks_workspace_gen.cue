package res

import "list"

#azurerm_databricks_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_databricks_workspace")
	close({
		access_connector_id?:                   string
		customer_managed_key_enabled?:          bool
		default_storage_firewall_enabled?:      bool
		disk_encryption_set_id?:                string
		id?:                                    string
		infrastructure_encryption_enabled?:     bool
		load_balancer_backend_address_pool_id?: string
		location!:                              string
		managed_disk_cmk_key_vault_id?:         string
		custom_parameters?: matchN(1, [#custom_parameters, list.MaxItems(1) & [...#custom_parameters]])
		managed_disk_cmk_key_vault_key_id?:                   string
		managed_disk_cmk_rotation_to_latest_version_enabled?: bool
		managed_disk_identity?: [...close({
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		managed_resource_group_id?:             string
		managed_resource_group_name?:           string
		managed_services_cmk_key_vault_id?:     string
		managed_services_cmk_key_vault_key_id?: string
		name!:                                  string
		network_security_group_rules_required?: string
		public_network_access_enabled?:         bool
		resource_group_name!:                   string
		sku!:                                   string
		storage_account_identity?: [...close({
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		tags?: [string]: string
		enhanced_security_compliance?: matchN(1, [#enhanced_security_compliance, list.MaxItems(1) & [...#enhanced_security_compliance]])
		timeouts?:      #timeouts
		workspace_id?:  string
		workspace_url?: string
	})

	#custom_parameters: close({
		machine_learning_workspace_id?:                        string
		nat_gateway_name?:                                     string
		no_public_ip?:                                         bool
		private_subnet_name?:                                  string
		private_subnet_network_security_group_association_id?: string
		public_ip_name?:                                       string
		public_subnet_name?:                                   string
		public_subnet_network_security_group_association_id?:  string
		storage_account_name?:                                 string
		storage_account_sku_name?:                             string
		virtual_network_id?:                                   string
		vnet_address_prefix?:                                  string
	})

	#enhanced_security_compliance: close({
		automatic_cluster_update_enabled?:    bool
		compliance_security_profile_enabled?: bool
		compliance_security_profile_standards?: [...string]
		enhanced_security_monitoring_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
