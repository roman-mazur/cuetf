package res

import "list"

#azurerm_workloads_sap_single_node_virtual_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_workloads_sap_single_node_virtual_instance")
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
		single_server_configuration?: matchN(1, [#single_server_configuration, list.MaxItems(1) & [_, ...] & [...#single_server_configuration]])
		timeouts?: #timeouts
		tags?: [string]: string
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#single_server_configuration: close({
		disk_volume_configuration?: matchN(1, [_#defs."/$defs/single_server_configuration/$defs/disk_volume_configuration", [..._#defs."/$defs/single_server_configuration/$defs/disk_volume_configuration"]])
		app_resource_group_name!: string
		database_type?:           string
		secondary_ip_enabled?:    bool
		subnet_id!:               string
		virtual_machine_configuration?: matchN(1, [_#defs."/$defs/single_server_configuration/$defs/virtual_machine_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/single_server_configuration/$defs/virtual_machine_configuration"]])
		virtual_machine_resource_names?: matchN(1, [_#defs."/$defs/single_server_configuration/$defs/virtual_machine_resource_names", list.MaxItems(1) & [..._#defs."/$defs/single_server_configuration/$defs/virtual_machine_resource_names"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/single_server_configuration/$defs/disk_volume_configuration": close({
		number_of_disks!: number
		size_in_gb!:      number
		sku_name!:        string
		volume_name!:     string
	})

	_#defs: "/$defs/single_server_configuration/$defs/virtual_machine_configuration": close({
		image?: matchN(1, [_#defs."/$defs/single_server_configuration/$defs/virtual_machine_configuration/$defs/image", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/single_server_configuration/$defs/virtual_machine_configuration/$defs/image"]])
		os_profile?: matchN(1, [_#defs."/$defs/single_server_configuration/$defs/virtual_machine_configuration/$defs/os_profile", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/single_server_configuration/$defs/virtual_machine_configuration/$defs/os_profile"]])
		virtual_machine_size!: string
	})

	_#defs: "/$defs/single_server_configuration/$defs/virtual_machine_configuration/$defs/image": close({
		offer!:     string
		publisher!: string
		sku!:       string
		version!:   string
	})

	_#defs: "/$defs/single_server_configuration/$defs/virtual_machine_configuration/$defs/os_profile": close({
		admin_username!:  string
		ssh_private_key!: string
		ssh_public_key!:  string
	})

	_#defs: "/$defs/single_server_configuration/$defs/virtual_machine_resource_names": close({
		data_disk?: matchN(1, [_#defs."/$defs/single_server_configuration/$defs/virtual_machine_resource_names/$defs/data_disk", [..._#defs."/$defs/single_server_configuration/$defs/virtual_machine_resource_names/$defs/data_disk"]])
		host_name?: string
		network_interface_names?: [...string]
		os_disk_name?:         string
		virtual_machine_name?: string
	})

	_#defs: "/$defs/single_server_configuration/$defs/virtual_machine_resource_names/$defs/data_disk": close({
		names!: [...string]
		volume_name!: string
	})
}
