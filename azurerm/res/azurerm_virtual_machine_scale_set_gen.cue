package res

import "list"

#azurerm_virtual_machine_scale_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_machine_scale_set")
	close({
		automatic_os_upgrade?: bool
		eviction_policy?:      string
		health_probe_id?:      string
		id?:                   string
		license_type?:         string
		location!:             string
		name!:                 string
		overprovision?:        bool
		priority?:             string
		boot_diagnostics?: matchN(1, [#boot_diagnostics, list.MaxItems(1) & [...#boot_diagnostics]])
		extension?: matchN(1, [#extension, [...#extension]])
		proximity_placement_group_id?: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		resource_group_name!:    string
		single_placement_group?: bool
		network_profile!: matchN(1, [#network_profile, [_, ...] & [...#network_profile]])
		os_profile!: matchN(1, [#os_profile, list.MaxItems(1) & [_, ...] & [...#os_profile]])
		tags?: [string]: string
		os_profile_linux_config?: matchN(1, [#os_profile_linux_config, list.MaxItems(1) & [...#os_profile_linux_config]])
		os_profile_secrets?: matchN(1, [#os_profile_secrets, [...#os_profile_secrets]])
		os_profile_windows_config?: matchN(1, [#os_profile_windows_config, list.MaxItems(1) & [...#os_profile_windows_config]])
		plan?: matchN(1, [#plan, list.MaxItems(1) & [...#plan]])
		rolling_upgrade_policy?: matchN(1, [#rolling_upgrade_policy, list.MaxItems(1) & [...#rolling_upgrade_policy]])
		upgrade_policy_mode!: string
		zones?: [...string]
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		storage_profile_data_disk?: matchN(1, [#storage_profile_data_disk, [...#storage_profile_data_disk]])
		storage_profile_image_reference?: matchN(1, [#storage_profile_image_reference, list.MaxItems(1) & [...#storage_profile_image_reference]])
		storage_profile_os_disk!: matchN(1, [#storage_profile_os_disk, list.MaxItems(1) & [_, ...] & [...#storage_profile_os_disk]])
		timeouts?: #timeouts
	})

	#boot_diagnostics: close({
		enabled?:     bool
		storage_uri!: string
	})

	#extension: close({
		auto_upgrade_minor_version?: bool
		name!:                       string
		protected_settings?:         string
		provision_after_extensions?: [...string]
		publisher!:            string
		settings?:             string
		type!:                 string
		type_handler_version!: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#network_profile: close({
		dns_settings?: matchN(1, [_#defs."/$defs/network_profile/$defs/dns_settings", list.MaxItems(1) & [..._#defs."/$defs/network_profile/$defs/dns_settings"]])
		accelerated_networking?:    bool
		ip_forwarding?:             bool
		name!:                      string
		network_security_group_id?: string
		primary!:                   bool
		ip_configuration!: matchN(1, [_#defs."/$defs/network_profile/$defs/ip_configuration", [_, ...] & [..._#defs."/$defs/network_profile/$defs/ip_configuration"]])
	})

	#os_profile: close({
		admin_password?:       string
		admin_username!:       string
		computer_name_prefix!: string
		custom_data?:          string
	})

	#os_profile_linux_config: close({
		ssh_keys?: matchN(1, [_#defs."/$defs/os_profile_linux_config/$defs/ssh_keys", [..._#defs."/$defs/os_profile_linux_config/$defs/ssh_keys"]])
		disable_password_authentication?: bool
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
	})

	#plan: close({
		name!:      string
		product!:   string
		publisher!: string
	})

	#rolling_upgrade_policy: close({
		max_batch_instance_percent?:              number
		max_unhealthy_instance_percent?:          number
		max_unhealthy_upgraded_instance_percent?: number
		pause_time_between_batches?:              string
	})

	#sku: close({
		capacity!: number
		name!:     string
		tier?:     string
	})

	#storage_profile_data_disk: close({
		caching?:           string
		create_option!:     string
		disk_size_gb?:      number
		lun!:               number
		managed_disk_type?: string
	})

	#storage_profile_image_reference: close({
		id?:        string
		offer?:     string
		publisher?: string
		sku?:       string
		version?:   string
	})

	#storage_profile_os_disk: close({
		caching?:           string
		create_option!:     string
		image?:             string
		managed_disk_type?: string
		name?:              string
		os_type?:           string
		vhd_containers?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/network_profile/$defs/dns_settings": close({
		dns_servers!: [...string]
	})

	_#defs: "/$defs/network_profile/$defs/ip_configuration": close({
		public_ip_address_configuration?: matchN(1, [_#defs."/$defs/network_profile/$defs/ip_configuration/$defs/public_ip_address_configuration", list.MaxItems(1) & [..._#defs."/$defs/network_profile/$defs/ip_configuration/$defs/public_ip_address_configuration"]])
		application_gateway_backend_address_pool_ids?: [...string]
		application_security_group_ids?: [...string]
		load_balancer_backend_address_pool_ids?: [...string]
		load_balancer_inbound_nat_rules_ids?: [...string]
		name!:      string
		primary!:   bool
		subnet_id!: string
	})

	_#defs: "/$defs/network_profile/$defs/ip_configuration/$defs/public_ip_address_configuration": close({
		domain_name_label!: string
		idle_timeout!:      number
		name!:              string
	})

	_#defs: "/$defs/os_profile_linux_config/$defs/ssh_keys": close({
		key_data?: string
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
