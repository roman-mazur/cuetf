package res

import "list"

#azurerm_workloads_sap_three_tier_virtual_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_workloads_sap_three_tier_virtual_instance")
	close({
		app_location!: string
		environment!:  string
		id?:           string
		location!:     string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		managed_resource_group_name?:           string
		managed_resources_network_access_type?: string
		name!:                                  string
		resource_group_name!:                   string
		sap_fqdn!:                              string
		sap_product!:                           string
		three_tier_configuration?: matchN(1, [#three_tier_configuration, list.MaxItems(1) & [_, ...] & [...#three_tier_configuration]])
		timeouts?: #timeouts
		tags?: [string]: string
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#three_tier_configuration: close({
		application_server_configuration?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/application_server_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/three_tier_configuration/$defs/application_server_configuration"]])
		central_server_configuration?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/central_server_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/three_tier_configuration/$defs/central_server_configuration"]])
		app_resource_group_name!: string
		database_server_configuration?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/database_server_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/three_tier_configuration/$defs/database_server_configuration"]])
		high_availability_type?: string
		resource_names?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names", list.MaxItems(1) & [..._#defs."/$defs/three_tier_configuration/$defs/resource_names"]])
		transport_create_and_mount?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/transport_create_and_mount", list.MaxItems(1) & [..._#defs."/$defs/three_tier_configuration/$defs/transport_create_and_mount"]])
		secondary_ip_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/application_server_configuration": close({
		virtual_machine_configuration?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/application_server_configuration/$defs/virtual_machine_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/three_tier_configuration/$defs/application_server_configuration/$defs/virtual_machine_configuration"]])
		instance_count!: number
		subnet_id!:      string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/application_server_configuration/$defs/virtual_machine_configuration": close({
		image?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/application_server_configuration/$defs/virtual_machine_configuration/$defs/image", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/three_tier_configuration/$defs/application_server_configuration/$defs/virtual_machine_configuration/$defs/image"]])
		os_profile?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/application_server_configuration/$defs/virtual_machine_configuration/$defs/os_profile", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/three_tier_configuration/$defs/application_server_configuration/$defs/virtual_machine_configuration/$defs/os_profile"]])
		virtual_machine_size!: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/application_server_configuration/$defs/virtual_machine_configuration/$defs/image": close({
		offer!:     string
		publisher!: string
		sku!:       string
		version!:   string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/application_server_configuration/$defs/virtual_machine_configuration/$defs/os_profile": close({
		admin_username!:  string
		ssh_private_key!: string
		ssh_public_key!:  string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/central_server_configuration": close({
		virtual_machine_configuration?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/central_server_configuration/$defs/virtual_machine_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/three_tier_configuration/$defs/central_server_configuration/$defs/virtual_machine_configuration"]])
		instance_count!: number
		subnet_id!:      string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/central_server_configuration/$defs/virtual_machine_configuration": close({
		image?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/central_server_configuration/$defs/virtual_machine_configuration/$defs/image", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/three_tier_configuration/$defs/central_server_configuration/$defs/virtual_machine_configuration/$defs/image"]])
		os_profile?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/central_server_configuration/$defs/virtual_machine_configuration/$defs/os_profile", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/three_tier_configuration/$defs/central_server_configuration/$defs/virtual_machine_configuration/$defs/os_profile"]])
		virtual_machine_size!: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/central_server_configuration/$defs/virtual_machine_configuration/$defs/image": close({
		offer!:     string
		publisher!: string
		sku!:       string
		version!:   string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/central_server_configuration/$defs/virtual_machine_configuration/$defs/os_profile": close({
		admin_username!:  string
		ssh_private_key!: string
		ssh_public_key!:  string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/database_server_configuration": close({
		disk_volume_configuration?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/database_server_configuration/$defs/disk_volume_configuration", [..._#defs."/$defs/three_tier_configuration/$defs/database_server_configuration/$defs/disk_volume_configuration"]])
		virtual_machine_configuration?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/database_server_configuration/$defs/virtual_machine_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/three_tier_configuration/$defs/database_server_configuration/$defs/virtual_machine_configuration"]])
		database_type?:  string
		instance_count!: number
		subnet_id!:      string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/database_server_configuration/$defs/disk_volume_configuration": close({
		number_of_disks!: number
		size_in_gb!:      number
		sku_name!:        string
		volume_name!:     string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/database_server_configuration/$defs/virtual_machine_configuration": close({
		image?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/database_server_configuration/$defs/virtual_machine_configuration/$defs/image", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/three_tier_configuration/$defs/database_server_configuration/$defs/virtual_machine_configuration/$defs/image"]])
		os_profile?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/database_server_configuration/$defs/virtual_machine_configuration/$defs/os_profile", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/three_tier_configuration/$defs/database_server_configuration/$defs/virtual_machine_configuration/$defs/os_profile"]])
		virtual_machine_size!: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/database_server_configuration/$defs/virtual_machine_configuration/$defs/image": close({
		offer!:     string
		publisher!: string
		sku!:       string
		version!:   string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/database_server_configuration/$defs/virtual_machine_configuration/$defs/os_profile": close({
		admin_username!:  string
		ssh_private_key!: string
		ssh_public_key!:  string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names": close({
		application_server?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/application_server", list.MaxItems(1) & [..._#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/application_server"]])
		central_server?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/central_server", list.MaxItems(1) & [..._#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/central_server"]])
		database_server?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/database_server", list.MaxItems(1) & [..._#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/database_server"]])
		shared_storage?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/shared_storage", list.MaxItems(1) & [..._#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/shared_storage"]])
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names/$defs/application_server": close({
		virtual_machine?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/application_server/$defs/virtual_machine", [..._#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/application_server/$defs/virtual_machine"]])
		availability_set_name?: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names/$defs/application_server/$defs/virtual_machine": close({
		data_disk?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/application_server/$defs/virtual_machine/$defs/data_disk", [..._#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/application_server/$defs/virtual_machine/$defs/data_disk"]])
		host_name?: string
		network_interface_names?: [...string]
		os_disk_name?:         string
		virtual_machine_name?: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names/$defs/application_server/$defs/virtual_machine/$defs/data_disk": close({
		names!: [...string]
		volume_name!: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names/$defs/central_server": close({
		load_balancer?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/central_server/$defs/load_balancer", list.MaxItems(1) & [..._#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/central_server/$defs/load_balancer"]])
		virtual_machine?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/central_server/$defs/virtual_machine", [..._#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/central_server/$defs/virtual_machine"]])
		availability_set_name?: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names/$defs/central_server/$defs/load_balancer": close({
		backend_pool_names?: [...string]
		frontend_ip_configuration_names?: [...string]
		health_probe_names?: [...string]
		name?: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names/$defs/central_server/$defs/virtual_machine": close({
		data_disk?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/central_server/$defs/virtual_machine/$defs/data_disk", [..._#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/central_server/$defs/virtual_machine/$defs/data_disk"]])
		host_name?: string
		network_interface_names?: [...string]
		os_disk_name?:         string
		virtual_machine_name?: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names/$defs/central_server/$defs/virtual_machine/$defs/data_disk": close({
		names!: [...string]
		volume_name!: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names/$defs/database_server": close({
		load_balancer?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/database_server/$defs/load_balancer", list.MaxItems(1) & [..._#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/database_server/$defs/load_balancer"]])
		virtual_machine?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/database_server/$defs/virtual_machine", [..._#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/database_server/$defs/virtual_machine"]])
		availability_set_name?: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names/$defs/database_server/$defs/load_balancer": close({
		backend_pool_names?: [...string]
		frontend_ip_configuration_names?: [...string]
		health_probe_names?: [...string]
		name?: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names/$defs/database_server/$defs/virtual_machine": close({
		data_disk?: matchN(1, [_#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/database_server/$defs/virtual_machine/$defs/data_disk", [..._#defs."/$defs/three_tier_configuration/$defs/resource_names/$defs/database_server/$defs/virtual_machine/$defs/data_disk"]])
		host_name?: string
		network_interface_names?: [...string]
		os_disk_name?:         string
		virtual_machine_name?: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names/$defs/database_server/$defs/virtual_machine/$defs/data_disk": close({
		names!: [...string]
		volume_name!: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/resource_names/$defs/shared_storage": close({
		account_name?:          string
		private_endpoint_name?: string
	})

	_#defs: "/$defs/three_tier_configuration/$defs/transport_create_and_mount": close({
		resource_group_id?:    string
		storage_account_name?: string
	})
}
