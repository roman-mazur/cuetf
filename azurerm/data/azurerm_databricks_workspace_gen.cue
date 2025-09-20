package data

#azurerm_databricks_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_databricks_workspace")
	close({
		custom_parameters?: [...close({
			machine_learning_workspace_id?: string
			nat_gateway_name?:              string
			no_public_ip?:                  bool
			private_subnet_name?:           string
			public_ip_name?:                string
			public_subnet_name?:            string
			storage_account_name?:          string
			storage_account_sku_name?:      string
			virtual_network_id?:            string
			vnet_address_prefix?:           string
		})]
		enhanced_security_compliance?: [...close({
			automatic_cluster_update_enabled?:    bool
			compliance_security_profile_enabled?: bool
			compliance_security_profile_standards?: [...string]
			enhanced_security_monitoring_enabled?: bool
		})]
		id?:       string
		location?: string
		managed_disk_identity?: [...close({
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		name!:                string
		resource_group_name!: string
		sku?:                 string
		timeouts?:            #timeouts
		storage_account_identity?: [...close({
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		tags?: [string]: string
		workspace_id?:  string
		workspace_url?: string
	})

	#timeouts: close({
		read?: string
	})
}
