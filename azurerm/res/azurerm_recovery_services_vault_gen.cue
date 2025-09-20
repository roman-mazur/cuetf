package res

import "list"

#azurerm_recovery_services_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_recovery_services_vault")
	close({
		classic_vmware_replication_enabled?: bool
		cross_region_restore_enabled?:       bool
		id?:                                 string
		immutability?:                       string
		location!:                           string
		name!:                               string
		public_network_access_enabled?:      bool
		encryption?: matchN(1, [#encryption, list.MaxItems(1) & [...#encryption]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		monitoring?: matchN(1, [#monitoring, list.MaxItems(1) & [...#monitoring]])
		resource_group_name!: string
		sku!:                 string
		soft_delete_enabled?: bool
		storage_mode_type?:   string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#encryption: close({
		infrastructure_encryption_enabled!: bool
		key_id!:                            string
		use_system_assigned_identity?:      bool
		user_assigned_identity_id?:         string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#monitoring: close({
		alerts_for_all_job_failures_enabled?:            bool
		alerts_for_critical_operation_failures_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
