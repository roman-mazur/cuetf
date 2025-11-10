package res

import "list"

#azurerm_linux_virtual_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_linux_virtual_machine")
	close({
		admin_password?:                                         string
		admin_username?:                                         string
		allow_extension_operations?:                             bool
		availability_set_id?:                                    string
		bypass_platform_safety_checks_on_user_schedule_enabled?: bool
		capacity_reservation_group_id?:                          string
		computer_name?:                                          string
		custom_data?:                                            string
		dedicated_host_group_id?:                                string
		dedicated_host_id?:                                      string
		disable_password_authentication?:                        bool
		disk_controller_type?:                                   string
		edge_zone?:                                              string
		encryption_at_host_enabled?:                             bool
		eviction_policy?:                                        string
		extensions_time_budget?:                                 string
		id?:                                                     string
		additional_capabilities?: matchN(1, [#additional_capabilities, list.MaxItems(1) & [...#additional_capabilities]])
		admin_ssh_key?: matchN(1, [#admin_ssh_key, [...#admin_ssh_key]])
		license_type?:  string
		location!:      string
		max_bid_price?: number
		name!:          string
		network_interface_ids!: [...string]
		os_managed_disk_id?:    string
		patch_assessment_mode?: string
		patch_mode?:            string
		boot_diagnostics?: matchN(1, [#boot_diagnostics, list.MaxItems(1) & [...#boot_diagnostics]])
		platform_fault_domain?: number
		priority?:              string
		private_ip_address?:    string
		private_ip_addresses?: [...string]
		provision_vm_agent?:           bool
		proximity_placement_group_id?: string
		public_ip_address?:            string
		public_ip_addresses?: [...string]
		reboot_setting?:      string
		resource_group_name!: string
		secure_boot_enabled?: bool
		size!:                string
		source_image_id?:     string
		tags?: [string]: string
		user_data?:                    string
		virtual_machine_id?:           string
		virtual_machine_scale_set_id?: string
		gallery_application?: matchN(1, [#gallery_application, list.MaxItems(100) & [...#gallery_application]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		os_disk!: matchN(1, [#os_disk, list.MaxItems(1) & [_, ...] & [...#os_disk]])
		os_image_notification?: matchN(1, [#os_image_notification, list.MaxItems(1) & [...#os_image_notification]])
		plan?: matchN(1, [#plan, list.MaxItems(1) & [...#plan]])
		secret?: matchN(1, [#secret, [...#secret]])
		vtpm_enabled?: bool
		zone?:         string
		source_image_reference?: matchN(1, [#source_image_reference, list.MaxItems(1) & [...#source_image_reference]])
		termination_notification?: matchN(1, [#termination_notification, list.MaxItems(1) & [...#termination_notification]])
		timeouts?: #timeouts
	})

	#additional_capabilities: close({
		hibernation_enabled?: bool
		ultra_ssd_enabled?:   bool
	})

	#admin_ssh_key: close({
		public_key!: string
		username!:   string
	})

	#boot_diagnostics: close({
		storage_account_uri?: string
	})

	#gallery_application: close({
		automatic_upgrade_enabled?:                   bool
		configuration_blob_uri?:                      string
		order?:                                       number
		tag?:                                         string
		treat_failure_as_deployment_failure_enabled?: bool
		version_id!:                                  string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#os_disk: close({
		diff_disk_settings?: matchN(1, [_#defs."/$defs/os_disk/$defs/diff_disk_settings", list.MaxItems(1) & [..._#defs."/$defs/os_disk/$defs/diff_disk_settings"]])
		caching!:                          string
		disk_encryption_set_id?:           string
		disk_size_gb?:                     number
		id?:                               string
		name?:                             string
		secure_vm_disk_encryption_set_id?: string
		security_encryption_type?:         string
		storage_account_type?:             string
		write_accelerator_enabled?:        bool
	})

	#os_image_notification: close({
		timeout?: string
	})

	#plan: close({
		name!:      string
		product!:   string
		publisher!: string
	})

	#secret: close({
		certificate!: matchN(1, [_#defs."/$defs/secret/$defs/certificate", [_, ...] & [..._#defs."/$defs/secret/$defs/certificate"]])
		key_vault_id!: string
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

	_#defs: "/$defs/os_disk/$defs/diff_disk_settings": close({
		option!:    string
		placement?: string
	})

	_#defs: "/$defs/secret/$defs/certificate": close({
		url!: string
	})
}
