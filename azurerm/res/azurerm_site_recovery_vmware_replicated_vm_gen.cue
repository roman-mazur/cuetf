package res

#azurerm_site_recovery_vmware_replicated_vm: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_site_recovery_vmware_replicated_vm")
	close({
		appliance_name!:                        string
		default_log_storage_account_id?:        string
		default_recovery_disk_type?:            string
		default_target_disk_encryption_set_id?: string
		id?:                                    string
		license_type?:                          string
		multi_vm_group_name?:                   string
		name!:                                  string
		physical_server_credential_name!:       string
		managed_disk?: matchN(1, [#managed_disk, [...#managed_disk]])
		recovery_replication_policy_id!: string
		recovery_vault_id!:              string
		source_vm_name!:                 string
		network_interface?: matchN(1, [#network_interface, [...#network_interface]])
		timeouts?:                                   #timeouts
		target_availability_set_id?:                 string
		target_boot_diagnostics_storage_account_id?: string
		target_network_id?:                          string
		target_proximity_placement_group_id?:        string
		target_resource_group_id!:                   string
		target_vm_name!:                             string
		target_vm_size?:                             string
		target_zone?:                                string
		test_network_id?:                            string
	})

	#managed_disk: close({
		disk_id!:                       string
		log_storage_account_id?:        string
		target_disk_encryption_set_id?: string
		target_disk_type!:              string
	})

	#network_interface: close({
		is_primary!:         bool
		source_mac_address!: string
		target_static_ip?:   string
		target_subnet_name?: string
		test_subnet_name?:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
