package res

import "list"

#azurerm_virtual_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_machine")
	close({
		availability_set_id?:              string
		delete_data_disks_on_termination?: bool
		delete_os_disk_on_termination?:    bool
		id?:                               string
		license_type?:                     string
		location!:                         string
		name!:                             string
		network_interface_ids!: [...string]
		primary_network_interface_id?: string
		proximity_placement_group_id?: string
		resource_group_name!:          string
		tags?: [string]: string
		vm_size!: string
		additional_capabilities?: matchN(1, [#additional_capabilities, list.MaxItems(1) & [...#additional_capabilities]])
		zones?: [...string]
		boot_diagnostics?: matchN(1, [#boot_diagnostics, list.MaxItems(1) & [...#boot_diagnostics]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		os_profile?: matchN(1, [#os_profile, list.MaxItems(1) & [...#os_profile]])
		os_profile_linux_config?: matchN(1, [#os_profile_linux_config, list.MaxItems(1) & [...#os_profile_linux_config]])
		os_profile_secrets?: matchN(1, [#os_profile_secrets, [...#os_profile_secrets]])
		os_profile_windows_config?: matchN(1, [#os_profile_windows_config, list.MaxItems(1) & [...#os_profile_windows_config]])
		plan?: matchN(1, [#plan, list.MaxItems(1) & [...#plan]])
		storage_data_disk?: matchN(1, [#storage_data_disk, [...#storage_data_disk]])
		storage_image_reference?: matchN(1, [#storage_image_reference, list.MaxItems(1) & [...#storage_image_reference]])
		storage_os_disk?: matchN(1, [#storage_os_disk, list.MaxItems(1) & [_, ...] & [...#storage_os_disk]])
		timeouts?: #timeouts
	})

	#additional_capabilities: close({
		ultra_ssd_enabled!: bool
	})

	#boot_diagnostics: close({
		enabled!:     bool
		storage_uri!: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#os_profile: close({
		admin_password?: string
		admin_username!: string
		computer_name!:  string
		custom_data?:    string
	})

	#os_profile_linux_config: close({
		ssh_keys?: matchN(1, [_#defs."/$defs/os_profile_linux_config/$defs/ssh_keys", [..._#defs."/$defs/os_profile_linux_config/$defs/ssh_keys"]])
		disable_password_authentication!: bool
	})

	#os_profile_secrets: close({
		vault_certificates?: matchN(1, [_#defs."/$defs/os_profile_secrets/$defs/vault_certificates", [..._#defs."/$defs/os_profile_secrets/$defs/vault_certificates"]])
		source_vault_id!: string
	})

	#os_profile_windows_config: close({
		additional_unattend_config?: matchN(1, [_#defs."/$defs/os_profile_windows_config/$defs/additional_unattend_config", [..._#defs."/$defs/os_profile_windows_config/$defs/additional_unattend_config"]])
		winrm?: matchN(1, [_#defs."/$defs/os_profile_windows_config/$defs/winrm", [..._#defs."/$defs/os_profile_windows_config/$defs/winrm"]])
		enable_automatic_upgrades?: bool
		provision_vm_agent?:        bool
		timezone?:                  string
	})

	#plan: close({
		name!:      string
		product!:   string
		publisher!: string
	})

	#storage_data_disk: close({
		caching?:                   string
		create_option!:             string
		disk_size_gb?:              number
		lun!:                       number
		managed_disk_id?:           string
		managed_disk_type?:         string
		name!:                      string
		vhd_uri?:                   string
		write_accelerator_enabled?: bool
	})

	#storage_image_reference: close({
		id?:        string
		offer?:     string
		publisher?: string
		sku?:       string
		version?:   string
	})

	#storage_os_disk: close({
		caching?:                   string
		create_option!:             string
		disk_size_gb?:              number
		image_uri?:                 string
		managed_disk_id?:           string
		managed_disk_type?:         string
		name!:                      string
		os_type?:                   string
		vhd_uri?:                   string
		write_accelerator_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/os_profile_linux_config/$defs/ssh_keys": close({
		key_data!: string
		path!:     string
	})

	_#defs: "/$defs/os_profile_secrets/$defs/vault_certificates": close({
		certificate_store?: string
		certificate_url!:   string
	})

	_#defs: "/$defs/os_profile_windows_config/$defs/additional_unattend_config": close({
		component!:    string
		content!:      string
		pass!:         string
		setting_name!: string
	})

	_#defs: "/$defs/os_profile_windows_config/$defs/winrm": close({
		certificate_url?: string
		protocol!:        string
	})
}
