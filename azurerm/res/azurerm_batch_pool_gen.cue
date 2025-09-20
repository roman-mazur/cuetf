package res

import "list"

#azurerm_batch_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_batch_pool")
	close({
		account_name!:             string
		display_name?:             string
		id?:                       string
		inter_node_communication?: string
		license_type?:             string
		max_tasks_per_node?:       number
		metadata?: [string]: string
		name!:              string
		node_agent_sku_id!: string
		auto_scale?: matchN(1, [#auto_scale, list.MaxItems(1) & [...#auto_scale]])
		os_disk_placement?:             string
		resource_group_name!:           string
		stop_pending_resize_operation?: bool
		certificate?: matchN(1, [#certificate, [...#certificate]])
		target_node_communication_mode?: string
		container_configuration?: matchN(1, [#container_configuration, list.MaxItems(1) & [...#container_configuration]])
		data_disks?: matchN(1, [#data_disks, [...#data_disks]])
		disk_encryption?: matchN(1, [#disk_encryption, [...#disk_encryption]])
		extensions?: matchN(1, [#extensions, [...#extensions]])
		fixed_scale?: matchN(1, [#fixed_scale, list.MaxItems(1) & [...#fixed_scale]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		mount?: matchN(1, [#mount, [...#mount]])
		network_configuration?: matchN(1, [#network_configuration, list.MaxItems(1) & [...#network_configuration]])
		node_placement?: matchN(1, [#node_placement, [...#node_placement]])
		security_profile?: matchN(1, [#security_profile, list.MaxItems(1) & [...#security_profile]])
		vm_size!: string
		start_task?: matchN(1, [#start_task, list.MaxItems(1) & [...#start_task]])
		storage_image_reference?: matchN(1, [#storage_image_reference, list.MaxItems(1) & [_, ...] & [...#storage_image_reference]])
		task_scheduling_policy?: matchN(1, [#task_scheduling_policy, [...#task_scheduling_policy]])
		timeouts?: #timeouts
		user_accounts?: matchN(1, [#user_accounts, [...#user_accounts]])
		windows?: matchN(1, [#windows, [...#windows]])
	})

	#auto_scale: close({
		evaluation_interval?: string
		formula!:             string
	})

	#certificate: close({
		id!:             string
		store_location!: string
		store_name?:     string
		visibility?: [...string]
	})

	#container_configuration: close({
		container_image_names?: [...string]
		container_registries?: [...close({
			password?:                  string
			registry_server?:           string
			user_assigned_identity_id?: string
			user_name?:                 string
		})]
		type?: string
	})

	#data_disks: close({
		caching?:              string
		disk_size_gb!:         number
		lun!:                  number
		storage_account_type?: string
	})

	#disk_encryption: close({
		disk_encryption_target!: string
	})

	#extensions: close({
		auto_upgrade_minor_version?: bool
		automatic_upgrade_enabled?:  bool
		name!:                       string
		protected_settings?:         string
		provision_after_extensions?: [...string]
		publisher!:            string
		settings_json?:        string
		type!:                 string
		type_handler_version?: string
	})

	#fixed_scale: close({
		node_deallocation_method?:  string
		resize_timeout?:            string
		target_dedicated_nodes?:    number
		target_low_priority_nodes?: number
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#mount: close({
		azure_blob_file_system?: matchN(1, [_#defs."/$defs/mount/$defs/azure_blob_file_system", list.MaxItems(1) & [..._#defs."/$defs/mount/$defs/azure_blob_file_system"]])
		azure_file_share?: matchN(1, [_#defs."/$defs/mount/$defs/azure_file_share", [..._#defs."/$defs/mount/$defs/azure_file_share"]])
		cifs_mount?: matchN(1, [_#defs."/$defs/mount/$defs/cifs_mount", [..._#defs."/$defs/mount/$defs/cifs_mount"]])
		nfs_mount?: matchN(1, [_#defs."/$defs/mount/$defs/nfs_mount", [..._#defs."/$defs/mount/$defs/nfs_mount"]])
	})

	#network_configuration: close({
		endpoint_configuration?: matchN(1, [_#defs."/$defs/network_configuration/$defs/endpoint_configuration", [..._#defs."/$defs/network_configuration/$defs/endpoint_configuration"]])
		accelerated_networking_enabled?:   bool
		dynamic_vnet_assignment_scope?:    string
		public_address_provisioning_type?: string
		public_ips?: [...string]
		subnet_id?: string
	})

	#node_placement: close({
		policy?: string
	})

	#security_profile: close({
		host_encryption_enabled?: bool
		secure_boot_enabled?:     bool
		security_type?:           string
		vtpm_enabled?:            bool
	})

	#start_task: close({
		container?: matchN(1, [_#defs."/$defs/start_task/$defs/container", [..._#defs."/$defs/start_task/$defs/container"]])
		command_line!: string
		common_environment_properties?: [string]: string
		task_retry_maximum?: number
		wait_for_success?:   bool
		resource_file?: matchN(1, [_#defs."/$defs/start_task/$defs/resource_file", [..._#defs."/$defs/start_task/$defs/resource_file"]])
		user_identity?: matchN(1, [_#defs."/$defs/start_task/$defs/user_identity", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/start_task/$defs/user_identity"]])
	})

	#storage_image_reference: close({
		id?:        string
		offer?:     string
		publisher?: string
		sku?:       string
		version?:   string
	})

	#task_scheduling_policy: close({
		node_fill_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#user_accounts: close({
		linux_user_configuration?: matchN(1, [_#defs."/$defs/user_accounts/$defs/linux_user_configuration", [..._#defs."/$defs/user_accounts/$defs/linux_user_configuration"]])
		windows_user_configuration?: matchN(1, [_#defs."/$defs/user_accounts/$defs/windows_user_configuration", [..._#defs."/$defs/user_accounts/$defs/windows_user_configuration"]])
		elevation_level!: string
		name!:            string
		password!:        string
	})

	#windows: close({
		enable_automatic_updates?: bool
	})

	_#defs: "/$defs/mount/$defs/azure_blob_file_system": close({
		account_key?:         string
		account_name!:        string
		blobfuse_options?:    string
		container_name!:      string
		identity_id?:         string
		relative_mount_path!: string
		sas_key?:             string
	})

	_#defs: "/$defs/mount/$defs/azure_file_share": close({
		account_key!:         string
		account_name!:        string
		azure_file_url!:      string
		mount_options?:       string
		relative_mount_path!: string
	})

	_#defs: "/$defs/mount/$defs/cifs_mount": close({
		mount_options?:       string
		password!:            string
		relative_mount_path!: string
		source!:              string
		user_name!:           string
	})

	_#defs: "/$defs/mount/$defs/nfs_mount": close({
		mount_options?:       string
		relative_mount_path!: string
		source!:              string
	})

	_#defs: "/$defs/network_configuration/$defs/endpoint_configuration": close({
		network_security_group_rules?: matchN(1, [_#defs."/$defs/network_configuration/$defs/endpoint_configuration/$defs/network_security_group_rules", [..._#defs."/$defs/network_configuration/$defs/endpoint_configuration/$defs/network_security_group_rules"]])
		backend_port!:        number
		frontend_port_range!: string
		name!:                string
		protocol!:            string
	})

	_#defs: "/$defs/network_configuration/$defs/endpoint_configuration/$defs/network_security_group_rules": close({
		access!:                string
		priority!:              number
		source_address_prefix!: string
		source_port_ranges?: [...string]
	})

	_#defs: "/$defs/start_task/$defs/container": close({
		registry?: matchN(1, [_#defs."/$defs/start_task/$defs/container/$defs/registry", [..._#defs."/$defs/start_task/$defs/container/$defs/registry"]])
		image_name!:        string
		run_options?:       string
		working_directory?: string
	})

	_#defs: "/$defs/start_task/$defs/container/$defs/registry": close({
		password?:        string
		registry_server!: string

		// The User Assigned Identity to use for Container Registry
		// access.
		user_assigned_identity_id?: string
		user_name?:                 string
	})

	_#defs: "/$defs/start_task/$defs/resource_file": close({
		auto_storage_container_name?: string
		blob_prefix?:                 string
		file_mode?:                   string
		file_path?:                   string
		http_url?:                    string
		storage_container_url?:       string
		user_assigned_identity_id?:   string
	})

	_#defs: "/$defs/start_task/$defs/user_identity": close({
		auto_user?: matchN(1, [_#defs."/$defs/start_task/$defs/user_identity/$defs/auto_user", list.MaxItems(1) & [..._#defs."/$defs/start_task/$defs/user_identity/$defs/auto_user"]])
		user_name?: string
	})

	_#defs: "/$defs/start_task/$defs/user_identity/$defs/auto_user": close({
		elevation_level?: string
		scope?:           string
	})

	_#defs: "/$defs/user_accounts/$defs/linux_user_configuration": close({
		gid?:             number
		ssh_private_key?: string
		uid?:             number
	})

	_#defs: "/$defs/user_accounts/$defs/windows_user_configuration": close({
		login_mode!: string
	})
}
