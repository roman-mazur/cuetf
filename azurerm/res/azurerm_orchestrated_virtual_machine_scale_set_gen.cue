package res

import "list"

#azurerm_orchestrated_virtual_machine_scale_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_orchestrated_virtual_machine_scale_set")
	close({
		capacity_reservation_group_id?: string
		encryption_at_host_enabled?:    bool
		eviction_policy?:               string
		extension_operations_enabled?:  bool
		extensions_time_budget?:        string
		id?:                            string
		instances?:                     number
		license_type?:                  string
		location!:                      string
		max_bid_price?:                 number
		name!:                          string
		network_api_version?:           string
		platform_fault_domain_count!:   number
		priority?:                      string
		proximity_placement_group_id?:  string
		resource_group_name!:           string
		single_placement_group?:        bool
		additional_capabilities?: matchN(1, [#additional_capabilities, list.MaxItems(1) & [...#additional_capabilities]])
		sku_name?:        string
		source_image_id?: string
		tags?: [string]: string
		unique_id?:        string
		upgrade_mode?:     string
		user_data_base64?: string
		zone_balance?:     bool
		zones?: [...string]
		automatic_instance_repair?: matchN(1, [#automatic_instance_repair, list.MaxItems(1) & [...#automatic_instance_repair]])
		boot_diagnostics?: matchN(1, [#boot_diagnostics, list.MaxItems(1) & [...#boot_diagnostics]])
		data_disk?: matchN(1, [#data_disk, [...#data_disk]])
		extension?: matchN(1, [#extension, [...#extension]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		network_interface?: matchN(1, [#network_interface, [...#network_interface]])
		os_disk?: matchN(1, [#os_disk, list.MaxItems(1) & [...#os_disk]])
		os_profile?: matchN(1, [#os_profile, list.MaxItems(1) & [...#os_profile]])
		plan?: matchN(1, [#plan, list.MaxItems(1) & [...#plan]])
		priority_mix?: matchN(1, [#priority_mix, list.MaxItems(1) & [...#priority_mix]])
		rolling_upgrade_policy?: matchN(1, [#rolling_upgrade_policy, list.MaxItems(1) & [...#rolling_upgrade_policy]])
		sku_profile?: matchN(1, [#sku_profile, list.MaxItems(1) & [...#sku_profile]])
		source_image_reference?: matchN(1, [#source_image_reference, list.MaxItems(1) & [...#source_image_reference]])
		termination_notification?: matchN(1, [#termination_notification, list.MaxItems(1) & [...#termination_notification]])
		timeouts?: #timeouts
	})

	#additional_capabilities: close({
		ultra_ssd_enabled?: bool
	})

	#automatic_instance_repair: close({
		action?:       string
		enabled!:      bool
		grace_period?: string
	})

	#boot_diagnostics: close({
		storage_account_uri?: string
	})

	#data_disk: close({
		caching!:                        string
		create_option?:                  string
		disk_encryption_set_id?:         string
		disk_size_gb?:                   number
		lun?:                            number
		storage_account_type!:           string
		ultra_ssd_disk_iops_read_write?: number
		ultra_ssd_disk_mbps_read_write?: number
		write_accelerator_enabled?:      bool
	})

	#extension: close({
		auto_upgrade_minor_version_enabled?: bool
		extensions_to_provision_after_vm_creation?: [...string]
		failure_suppression_enabled?:         bool
		force_extension_execution_on_change?: string
		name!:                                string
		protected_settings?:                  string
		publisher!:                           string
		protected_settings_from_key_vault?: matchN(1, [_#defs."/$defs/extension/$defs/protected_settings_from_key_vault", list.MaxItems(1) & [..._#defs."/$defs/extension/$defs/protected_settings_from_key_vault"]])
		settings?:             string
		type!:                 string
		type_handler_version!: string
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#network_interface: close({
		ip_configuration?: matchN(1, [_#defs."/$defs/network_interface/$defs/ip_configuration", [_, ...] & [..._#defs."/$defs/network_interface/$defs/ip_configuration"]])
		auxiliary_mode?: string
		auxiliary_sku?:  string
		dns_servers?: [...string]
		enable_accelerated_networking?: bool
		enable_ip_forwarding?:          bool
		name!:                          string
		network_security_group_id?:     string
		primary?:                       bool
	})

	#os_disk: close({
		diff_disk_settings?: matchN(1, [_#defs."/$defs/os_disk/$defs/diff_disk_settings", list.MaxItems(1) & [..._#defs."/$defs/os_disk/$defs/diff_disk_settings"]])
		caching!:                   string
		disk_encryption_set_id?:    string
		disk_size_gb?:              number
		storage_account_type!:      string
		write_accelerator_enabled?: bool
	})

	#os_profile: close({
		linux_configuration?: matchN(1, [_#defs."/$defs/os_profile/$defs/linux_configuration", list.MaxItems(1) & [..._#defs."/$defs/os_profile/$defs/linux_configuration"]])
		windows_configuration?: matchN(1, [_#defs."/$defs/os_profile/$defs/windows_configuration", list.MaxItems(1) & [..._#defs."/$defs/os_profile/$defs/windows_configuration"]])
		custom_data?: string
	})

	#plan: close({
		name!:      string
		product!:   string
		publisher!: string
	})

	#priority_mix: close({
		base_regular_count?:            number
		regular_percentage_above_base?: number
	})

	#rolling_upgrade_policy: close({
		cross_zone_upgrades_enabled?:             bool
		max_batch_instance_percent!:              number
		max_unhealthy_instance_percent!:          number
		max_unhealthy_upgraded_instance_percent!: number
		maximum_surge_instances_enabled?:         bool
		pause_time_between_batches!:              string
		prioritize_unhealthy_instances_enabled?:  bool
	})

	#sku_profile: close({
		allocation_strategy!: string
		vm_sizes!: [...string]
	})

	#source_image_reference: close({
		offer!:     string
		publisher!: string
		sku!:       string
		version!:   string
	})

	#termination_notification: close({
		enabled!: bool
		timeout?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/extension/$defs/protected_settings_from_key_vault": close({
		secret_url!:      string
		source_vault_id!: string
	})

	_#defs: "/$defs/network_interface/$defs/ip_configuration": close({
		public_ip_address?: matchN(1, [_#defs."/$defs/network_interface/$defs/ip_configuration/$defs/public_ip_address", [..._#defs."/$defs/network_interface/$defs/ip_configuration/$defs/public_ip_address"]])
		application_gateway_backend_address_pool_ids?: [...string]
		application_security_group_ids?: [...string]
		load_balancer_backend_address_pool_ids?: [...string]
		name!:      string
		primary?:   bool
		subnet_id?: string
		version?:   string
	})

	_#defs: "/$defs/network_interface/$defs/ip_configuration/$defs/public_ip_address": close({
		ip_tag?: matchN(1, [_#defs."/$defs/network_interface/$defs/ip_configuration/$defs/public_ip_address/$defs/ip_tag", [..._#defs."/$defs/network_interface/$defs/ip_configuration/$defs/public_ip_address/$defs/ip_tag"]])
		domain_name_label?:       string
		idle_timeout_in_minutes?: number
		name!:                    string
		public_ip_prefix_id?:     string
		sku_name?:                string
		version?:                 string
	})

	_#defs: "/$defs/network_interface/$defs/ip_configuration/$defs/public_ip_address/$defs/ip_tag": close({
		tag!:  string
		type!: string
	})

	_#defs: "/$defs/os_disk/$defs/diff_disk_settings": close({
		option!:    string
		placement?: string
	})

	_#defs: "/$defs/os_profile/$defs/linux_configuration": close({
		admin_ssh_key?: matchN(1, [_#defs."/$defs/os_profile/$defs/linux_configuration/$defs/admin_ssh_key", [..._#defs."/$defs/os_profile/$defs/linux_configuration/$defs/admin_ssh_key"]])
		admin_password?:                  string
		admin_username!:                  string
		computer_name_prefix?:            string
		disable_password_authentication?: bool
		patch_assessment_mode?:           string
		patch_mode?:                      string
		provision_vm_agent?:              bool
		secret?: matchN(1, [_#defs."/$defs/os_profile/$defs/linux_configuration/$defs/secret", [..._#defs."/$defs/os_profile/$defs/linux_configuration/$defs/secret"]])
	})

	_#defs: "/$defs/os_profile/$defs/linux_configuration/$defs/admin_ssh_key": close({
		public_key!: string
		username!:   string
	})

	_#defs: "/$defs/os_profile/$defs/linux_configuration/$defs/secret": close({
		certificate?: matchN(1, [_#defs."/$defs/os_profile/$defs/linux_configuration/$defs/secret/$defs/certificate", [_, ...] & [..._#defs."/$defs/os_profile/$defs/linux_configuration/$defs/secret/$defs/certificate"]])
		key_vault_id!: string
	})

	_#defs: "/$defs/os_profile/$defs/linux_configuration/$defs/secret/$defs/certificate": close({
		url!: string
	})

	_#defs: "/$defs/os_profile/$defs/windows_configuration": close({
		admin_password!:           string
		admin_username!:           string
		computer_name_prefix?:     string
		enable_automatic_updates?: bool
		hotpatching_enabled?:      bool
		patch_assessment_mode?:    string
		patch_mode?:               string
		additional_unattend_content?: matchN(1, [_#defs."/$defs/os_profile/$defs/windows_configuration/$defs/additional_unattend_content", [..._#defs."/$defs/os_profile/$defs/windows_configuration/$defs/additional_unattend_content"]])
		provision_vm_agent?: bool
		secret?: matchN(1, [_#defs."/$defs/os_profile/$defs/windows_configuration/$defs/secret", [..._#defs."/$defs/os_profile/$defs/windows_configuration/$defs/secret"]])
		winrm_listener?: matchN(1, [_#defs."/$defs/os_profile/$defs/windows_configuration/$defs/winrm_listener", [..._#defs."/$defs/os_profile/$defs/windows_configuration/$defs/winrm_listener"]])
		timezone?: string
	})

	_#defs: "/$defs/os_profile/$defs/windows_configuration/$defs/additional_unattend_content": close({
		content!: string
		setting!: string
	})

	_#defs: "/$defs/os_profile/$defs/windows_configuration/$defs/secret": close({
		certificate?: matchN(1, [_#defs."/$defs/os_profile/$defs/windows_configuration/$defs/secret/$defs/certificate", [_, ...] & [..._#defs."/$defs/os_profile/$defs/windows_configuration/$defs/secret/$defs/certificate"]])
		key_vault_id!: string
	})

	_#defs: "/$defs/os_profile/$defs/windows_configuration/$defs/secret/$defs/certificate": close({
		store!: string
		url!:   string
	})

	_#defs: "/$defs/os_profile/$defs/windows_configuration/$defs/winrm_listener": close({
		certificate_url?: string
		protocol!:        string
	})
}
