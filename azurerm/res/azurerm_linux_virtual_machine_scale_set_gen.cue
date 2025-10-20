package res

import "list"

#azurerm_linux_virtual_machine_scale_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_linux_virtual_machine_scale_set")
	close({
		admin_password?:                                    string
		admin_username!:                                    string
		capacity_reservation_group_id?:                     string
		computer_name_prefix?:                              string
		custom_data?:                                       string
		disable_password_authentication?:                   bool
		do_not_run_extensions_on_overprovisioned_machines?: bool
		edge_zone?:                                         string
		encryption_at_host_enabled?:                        bool
		eviction_policy?:                                   string
		extension_operations_enabled?:                      bool
		extensions_time_budget?:                            string
		health_probe_id?:                                   string
		host_group_id?:                                     string
		id?:                                                string
		instances?:                                         number
		location!:                                          string
		max_bid_price?:                                     number
		additional_capabilities?: matchN(1, [#additional_capabilities, list.MaxItems(1) & [...#additional_capabilities]])
		name!:                         string
		overprovision?:                bool
		platform_fault_domain_count?:  number
		priority?:                     string
		provision_vm_agent?:           bool
		proximity_placement_group_id?: string
		admin_ssh_key?: matchN(1, [#admin_ssh_key, [...#admin_ssh_key]])
		resilient_vm_creation_enabled?: bool
		automatic_instance_repair?: matchN(1, [#automatic_instance_repair, list.MaxItems(1) & [...#automatic_instance_repair]])
		resilient_vm_deletion_enabled?: bool
		automatic_os_upgrade_policy?: matchN(1, [#automatic_os_upgrade_policy, list.MaxItems(1) & [...#automatic_os_upgrade_policy]])
		boot_diagnostics?: matchN(1, [#boot_diagnostics, list.MaxItems(1) & [...#boot_diagnostics]])
		resource_group_name!:    string
		secure_boot_enabled?:    bool
		single_placement_group?: bool
		data_disk?: matchN(1, [#data_disk, [...#data_disk]])
		sku!:             string
		source_image_id?: string
		tags?: [string]: string
		unique_id?:    string
		upgrade_mode?: string
		user_data?:    string
		extension?: matchN(1, [#extension, [...#extension]])
		gallery_application?: matchN(1, [#gallery_application, list.MaxItems(100) & [...#gallery_application]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		network_interface?: matchN(1, [#network_interface, [_, ...] & [...#network_interface]])
		os_disk?: matchN(1, [#os_disk, list.MaxItems(1) & [_, ...] & [...#os_disk]])
		plan?: matchN(1, [#plan, list.MaxItems(1) & [...#plan]])
		rolling_upgrade_policy?: matchN(1, [#rolling_upgrade_policy, list.MaxItems(1) & [...#rolling_upgrade_policy]])
		vtpm_enabled?: bool
		zone_balance?: bool
		zones?: [...string]
		scale_in?: matchN(1, [#scale_in, list.MaxItems(1) & [...#scale_in]])
		secret?: matchN(1, [#secret, [...#secret]])
		source_image_reference?: matchN(1, [#source_image_reference, list.MaxItems(1) & [...#source_image_reference]])
		spot_restore?: matchN(1, [#spot_restore, list.MaxItems(1) & [...#spot_restore]])
		termination_notification?: matchN(1, [#termination_notification, list.MaxItems(1) & [...#termination_notification]])
		timeouts?: #timeouts
	})

	#additional_capabilities: close({
		ultra_ssd_enabled?: bool
	})

	#admin_ssh_key: close({
		public_key!: string
		username!:   string
	})

	#automatic_instance_repair: close({
		action?:       string
		enabled!:      bool
		grace_period?: string
	})

	#automatic_os_upgrade_policy: close({
		disable_automatic_rollback!:  bool
		enable_automatic_os_upgrade!: bool
	})

	#boot_diagnostics: close({
		storage_account_uri?: string
	})

	#data_disk: close({
		caching!:                        string
		create_option?:                  string
		disk_encryption_set_id?:         string
		disk_size_gb!:                   number
		lun!:                            number
		name?:                           string
		storage_account_type!:           string
		ultra_ssd_disk_iops_read_write?: number
		ultra_ssd_disk_mbps_read_write?: number
		write_accelerator_enabled?:      bool
	})

	#extension: close({
		auto_upgrade_minor_version?: bool
		automatic_upgrade_enabled?:  bool
		force_update_tag?:           string
		name!:                       string
		protected_settings?:         string
		provision_after_extensions?: [...string]
		publisher!: string
		protected_settings_from_key_vault?: matchN(1, [_#defs."/$defs/extension/$defs/protected_settings_from_key_vault", list.MaxItems(1) & [..._#defs."/$defs/extension/$defs/protected_settings_from_key_vault"]])
		settings?:             string
		type!:                 string
		type_handler_version!: string
	})

	#gallery_application: close({
		configuration_blob_uri?: string
		order?:                  number
		tag?:                    string
		version_id!:             string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
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
		caching!:                          string
		disk_encryption_set_id?:           string
		disk_size_gb?:                     number
		secure_vm_disk_encryption_set_id?: string
		security_encryption_type?:         string
		storage_account_type!:             string
		write_accelerator_enabled?:        bool
	})

	#plan: close({
		name!:      string
		product!:   string
		publisher!: string
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

	#scale_in: close({
		force_deletion_enabled?: bool
		rule?:                   string
	})

	#secret: close({
		certificate?: matchN(1, [_#defs."/$defs/secret/$defs/certificate", [_, ...] & [..._#defs."/$defs/secret/$defs/certificate"]])
		key_vault_id!: string
	})

	#source_image_reference: close({
		offer!:     string
		publisher!: string
		sku!:       string
		version!:   string
	})

	#spot_restore: close({
		enabled?: bool
		timeout?: string
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
		load_balancer_inbound_nat_rules_ids?: [...string]
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

	_#defs: "/$defs/secret/$defs/certificate": close({
		url!: string
	})
}
