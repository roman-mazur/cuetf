package res

import "list"

#azurerm_system_center_virtual_machine_manager_virtual_machine_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_system_center_virtual_machine_manager_virtual_machine_instance")
	close({
		hardware?: matchN(1, [#hardware, list.MaxItems(1) & [...#hardware]])
		custom_location_id!: string
		id?:                 string
		scoped_resource_id!: string
		system_center_virtual_machine_manager_availability_set_ids?: [...string]
		infrastructure!: matchN(1, [#infrastructure, list.MaxItems(1) & [_, ...] & [...#infrastructure]])
		network_interface?: matchN(1, [#network_interface, [...#network_interface]])
		operating_system?: matchN(1, [#operating_system, list.MaxItems(1) & [...#operating_system]])
		storage_disk?: matchN(1, [#storage_disk, [...#storage_disk]])
		timeouts?: #timeouts
	})

	#hardware: close({
		cpu_count?:                       number
		dynamic_memory_max_in_mb?:        number
		dynamic_memory_min_in_mb?:        number
		limit_cpu_for_migration_enabled?: bool
		memory_in_mb?:                    number
	})

	#infrastructure: close({
		checkpoint_type?:                                                 string
		system_center_virtual_machine_manager_cloud_id?:                  string
		system_center_virtual_machine_manager_inventory_item_id?:         string
		system_center_virtual_machine_manager_template_id?:               string
		system_center_virtual_machine_manager_virtual_machine_server_id?: string
	})

	#network_interface: close({
		ipv4_address_type?:  string
		ipv6_address_type?:  string
		mac_address_type?:   string
		name!:               string
		virtual_network_id?: string
	})

	#operating_system: close({
		admin_password?: string
		computer_name?:  string
	})

	#storage_disk: close({
		bus?:                     number
		bus_type?:                string
		disk_size_gb?:            number
		lun?:                     number
		name?:                    string
		storage_qos_policy_name?: string
		template_disk_id?:        string
		vhd_type?:                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
