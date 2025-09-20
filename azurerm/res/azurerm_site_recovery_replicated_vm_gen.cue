package res

#azurerm_site_recovery_replicated_vm: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_site_recovery_replicated_vm")
	close({
		id?: string
		managed_disk?: [...close({
			disk_id?:                    string
			staging_storage_account_id?: string
			target_disk_encryption?: [...close({
				disk_encryption_key?: [...close({
					secret_url?: string
					vault_id?:   string
				})]
				key_encryption_key?: [...close({
					key_url?:  string
					vault_id?: string
				})]
			})]
			target_disk_encryption_set_id?: string
			target_disk_type?:              string
			target_replica_disk_type?:      string
			target_resource_group_id?:      string
		})]
		multi_vm_group_name?: string
		name!:                string
		timeouts?:            #timeouts
		network_interface?: [...close({
			failover_test_public_ip_address_id?: string
			failover_test_static_ip?:            string
			failover_test_subnet_name?:          string
			recovery_load_balancer_backend_address_pool_ids?: [...string]
			recovery_public_ip_address_id?: string
			source_network_interface_id?:   string
			target_static_ip?:              string
			target_subnet_name?:            string
		})]
		recovery_replication_policy_id!:            string
		recovery_vault_name!:                       string
		resource_group_name!:                       string
		source_recovery_fabric_name!:               string
		source_recovery_protection_container_name!: string
		source_vm_id!:                              string
		target_availability_set_id?:                string
		target_boot_diagnostic_storage_account_id?: string
		target_capacity_reservation_group_id?:      string
		target_edge_zone?:                          string
		target_network_id?:                         string
		target_proximity_placement_group_id?:       string
		target_recovery_fabric_id!:                 string
		target_recovery_protection_container_id!:   string
		target_resource_group_id!:                  string
		target_virtual_machine_scale_set_id?:       string
		target_virtual_machine_size?:               string
		target_zone?:                               string
		test_network_id?:                           string
		unmanaged_disk?: [...close({
			disk_uri?:                   string
			staging_storage_account_id?: string
			target_storage_account_id?:  string
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
