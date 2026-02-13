package res

import "list"

#google_backup_dr_restore_workload: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_backup_dr_restore_workload")
	close({
		// Required. The ID of the backup to restore from.
		backup_id!: string

		// Required. The ID of the backup vault.
		backup_vault_id!: string

		// Optional. A field mask used to clear server-side default values
		// during restore.
		clear_overrides_field_mask?: string

		// Required. The ID of the data source.
		data_source_id!: string

		// Optional. If true (default), running terraform destroy will
		// delete the live resource in GCP.
		// If false, only the restore record is removed from the state,
		// leaving the resource active.
		delete_restored_instance?: bool
		id?:                       string
		compute_instance_restore_properties?: matchN(1, [#compute_instance_restore_properties, list.MaxItems(1) & [...#compute_instance_restore_properties]])
		compute_instance_target_environment?: matchN(1, [#compute_instance_target_environment, list.MaxItems(1) & [...#compute_instance_target_environment]])
		disk_restore_properties?: matchN(1, [#disk_restore_properties, list.MaxItems(1) & [...#disk_restore_properties]])
		disk_target_environment?: matchN(1, [#disk_target_environment, list.MaxItems(1) & [...#disk_target_environment]])
		region_disk_target_environment?: matchN(1, [#region_disk_target_environment, list.MaxItems(1) & [...#region_disk_target_environment]])

		// Required. The location for the backup vault.
		location!: string
		timeouts?: #timeouts

		// Optional. An optional request ID to identify requests. Specify
		// a unique request ID
		// so that if you must retry your request, the server will know to
		// ignore
		// the request if it has already been completed.
		request_id?: string

		// Output only. Details of the target resource created/modified as
		// part of restore.
		target_resource?: [...close({
			gcp_resource?: [...close({
				gcp_resourcename?: string
				location?:         string
				type?:             string
			})]
		})]
	})

	#compute_instance_restore_properties: close({
		// Optional. Allows this instance to send and receive packets with
		// non-matching destination or source IPs.
		can_ip_forward?: bool

		// Optional. Whether the resource should be protected against
		// deletion.
		deletion_protection?: bool

		// Optional. An optional description of this resource.
		description?: string

		// Optional. Specifies the hostname of the instance.
		hostname?: string

		// Optional. KeyRevocationActionType of the instance. Possible
		// values: ["KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED", "NONE",
		// "STOP"]
		key_revocation_action_type?: string
		advanced_machine_features?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/advanced_machine_features", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/advanced_machine_features"]])

		// Optional. Full or partial URL of the machine type resource to
		// use for this instance.
		machine_type?: string

		// Optional. Minimum CPU platform to use for this instance.
		min_cpu_platform?: string
		allocation_affinity?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/allocation_affinity", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/allocation_affinity"]])
		confidential_instance_config?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/confidential_instance_config", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/confidential_instance_config"]])
		disks?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/disks", [..._#defs."/$defs/compute_instance_restore_properties/$defs/disks"]])
		display_device?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/display_device", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/display_device"]])
		guest_accelerators?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/guest_accelerators", [..._#defs."/$defs/compute_instance_restore_properties/$defs/guest_accelerators"]])
		instance_encryption_key?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/instance_encryption_key", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/instance_encryption_key"]])
		labels?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/labels", [..._#defs."/$defs/compute_instance_restore_properties/$defs/labels"]])
		metadata?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/metadata", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/metadata"]])
		network_interfaces?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/network_interfaces", [..._#defs."/$defs/compute_instance_restore_properties/$defs/network_interfaces"]])
		network_performance_config?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/network_performance_config", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/network_performance_config"]])
		params?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/params", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/params"]])
		scheduling?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/scheduling", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/scheduling"]])
		service_accounts?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/service_accounts", [..._#defs."/$defs/compute_instance_restore_properties/$defs/service_accounts"]])
		shielded_instance_config?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/shielded_instance_config", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/shielded_instance_config"]])
		tags?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/tags"]])

		// Required. Name of the compute instance.
		name!: string

		// Optional. The private IPv6 google access type for the VM.
		// Possible values:
		// ["INSTANCE_PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED",
		// "INHERIT_FROM_SUBNETWORK",
		// "ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE",
		// "ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE"]
		private_ipv6_google_access?: string

		// Optional. Resource policies applied to this instance.
		resource_policies?: [...string]
	})

	#compute_instance_target_environment: close({
		// Required. Target project for the Compute Engine instance.
		project!: string

		// Required. The zone of the Compute Engine instance.
		zone!: string
	})

	#disk_restore_properties: close({
		// Optional. The access mode of the disk. Possible values:
		// ["READ_WRITE_SINGLE", "READ_WRITE_MANY", "READ_ONLY_MANY"]
		access_mode?: string

		// Optional. The architecture of the source disk. Possible values:
		// ["ARCHITECTURE_UNSPECIFIED", "X86_64", "ARM64"]
		architecture?: string

		// Optional. An optional description of this resource.
		description?: string

		// Optional. Indicates whether this disk is using confidential
		// compute mode.
		enable_confidential_compute?: bool

		// Optional. A list of publicly available licenses that are
		// applicable to this backup.
		licenses?: [...string]

		// Required. Name of the disk.
		name!: string

		// Optional. Physical block size of the persistent disk, in bytes.
		physical_block_size_bytes?: number

		// Optional. Indicates how many IOPS to provision for the disk.
		provisioned_iops?: number
		disk_encryption_key?: matchN(1, [_#defs."/$defs/disk_restore_properties/$defs/disk_encryption_key", list.MaxItems(1) & [..._#defs."/$defs/disk_restore_properties/$defs/disk_encryption_key"]])
		guest_os_feature?: matchN(1, [_#defs."/$defs/disk_restore_properties/$defs/guest_os_feature", [..._#defs."/$defs/disk_restore_properties/$defs/guest_os_feature"]])
		labels?: matchN(1, [_#defs."/$defs/disk_restore_properties/$defs/labels", [..._#defs."/$defs/disk_restore_properties/$defs/labels"]])
		resource_manager_tags?: matchN(1, [_#defs."/$defs/disk_restore_properties/$defs/resource_manager_tags", [..._#defs."/$defs/disk_restore_properties/$defs/resource_manager_tags"]])

		// Optional. Indicates how much throughput to provision for the
		// disk.
		provisioned_throughput?: number

		// Optional. Resource policies applied to this disk.
		resource_policy?: [...string]

		// Required. The size of the disk in GB.
		size_gb!: number

		// Optional. The storage pool in which the new disk is created.
		storage_pool?: string

		// Required. URL of the disk type resource describing which disk
		// type to use.
		type!: string
	})

	#disk_target_environment: close({
		// Required. Target project for the disk.
		project!: string

		// Required. Target zone for the disk.
		zone!: string
	})

	#region_disk_target_environment: close({
		// Required. Target project for the disk.
		project!: string

		// Required. Target region for the disk.
		region!: string

		// Required. Target URLs of the replica zones for the disk.
		replica_zones!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/advanced_machine_features": close({
		// Optional. Whether to enable nested virtualization or not
		// (default is false).
		enable_nested_virtualization?: bool

		// Optional. Whether to enable UEFI networking for instance
		// creation.
		enable_uefi_networking?: bool

		// Optional. The number of threads per physical core.
		threads_per_core?: number

		// Optional. The number of physical cores to expose to an
		// instance.
		visible_core_count?: number
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/allocation_affinity": close({
		// Possible values: ["TYPE_UNSPECIFIED", "NO_RESERVATION",
		// "ANY_RESERVATION", "SPECIFIC_RESERVATION"]
		consume_allocation_type?: string
		key?:                     string
		values?: [...string]
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/confidential_instance_config": close({
		// Optional. Defines whether the instance should have confidential
		// compute enabled.
		enable_confidential_compute?: bool
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/disks": close({
		// Optional. Specifies whether the disk will be auto-deleted when
		// the instance is deleted.
		auto_delete?: bool

		// Optional. Indicates that this is a boot disk.
		boot?: bool

		// Optional. This is used as an identifier for the disks.
		device_name?: string

		// Optional. Specifies the disk interface to use for attaching
		// this disk. Possible values: ["DISK_INTERFACE_UNSPECIFIED",
		// "SCSI", "NVME", "NVDIMM", "ISCSI"]
		disk_interface?: string

		// Optional. The size of the disk in GB.
		disk_size_gb?: number

		// Output only. The URI of the disk type resource.
		disk_type?: string

		// Optional. A zero-based index to this disk, where 0 is reserved
		// for the boot disk.
		index?: number

		// Optional. Type of the resource.
		kind?: string
		disk_encryption_key?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/disks/$defs/disk_encryption_key", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/disks/$defs/disk_encryption_key"]])
		guest_os_feature?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/disks/$defs/guest_os_feature", [..._#defs."/$defs/compute_instance_restore_properties/$defs/disks/$defs/guest_os_feature"]])
		initialize_params?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/disks/$defs/initialize_params", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/disks/$defs/initialize_params"]])

		// Optional. Any valid publicly visible licenses.
		license?: [...string]

		// Optional. The mode in which to attach this disk. Possible
		// values: ["DISK_MODE_UNSPECIFIED", "READ_WRITE", "READ_ONLY",
		// "LOCKED"]
		mode?: string

		// Optional. Specifies the saved state of the disk. Possible
		// values: ["DISK_SAVED_STATE_UNSPECIFIED", "PRESERVED"]
		saved_state?: string

		// Optional. Specifies a valid partial or full URL to an existing
		// Persistent Disk resource.
		source?: string

		// Optional. Specifies the type of the disk. Possible values:
		// ["DISK_TYPE_UNSPECIFIED", "SCRATCH", "PERSISTENT"]
		type?: string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/disks/$defs/disk_encryption_key": close({
		// Optional. The name of the encryption key that is stored in
		// Google Cloud KMS.
		kms_key_name?: string

		// Optional. The service account being used for the encryption
		// request.
		kms_key_service_account?: string

		// Optional. Specifies a 256-bit customer-supplied encryption key.
		raw_key?: string

		// Optional. RSA-wrapped 2048-bit customer-supplied encryption
		// key.
		rsa_encrypted_key?: string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/disks/$defs/guest_os_feature": close({
		// Optional. The ID of a supported feature. Possible values:
		// ["FEATURE_TYPE_UNSPECIFIED", "VIRTIO_SCSI_MULTIQUEUE",
		// "WINDOWS", "MULTI_IP_SUBNET", "UEFI_COMPATIBLE",
		// "SECURE_BOOT", "GVNIC", "SEV_CAPABLE",
		// "BARE_METAL_LINUX_COMPATIBLE", "SUSPEND_RESUME_COMPATIBLE",
		// "SEV_LIVE_MIGRATABLE", "SEV_SNP_CAPABLE", "TDX_CAPABLE",
		// "IDPF", "SEV_LIVE_MIGRATABLE_V2"]
		type?: string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/disks/$defs/initialize_params": close({
		// Optional. Specifies the disk name.
		disk_name?: string

		// Optional. URL of the zone where the disk should be created.
		replica_zones?: [...string]
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/display_device": close({
		// Optional. Enables display for the Compute Engine VM.
		enable_display?: bool
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/guest_accelerators": close({
		// Optional. The number of the guest accelerator cards exposed to
		// this instance.
		accelerator_count?: number

		// Optional. Full or partial URL of the accelerator type resource.
		accelerator_type?: string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/instance_encryption_key": close({
		kms_key_name?:            string
		kms_key_service_account?: string
		raw_key?:                 string
		rsa_encrypted_key?:       string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/labels": close({
		key!:   string
		value?: string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/metadata": close({
		items?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/metadata/$defs/items", [..._#defs."/$defs/compute_instance_restore_properties/$defs/metadata/$defs/items"]])
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/metadata/$defs/items": close({
		key?:   string
		value?: string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/network_interfaces": close({
		// Optional. The prefix length of the primary internal IPv6 range.
		internal_ipv6_prefix_length?: number

		// Optional. An IPv4 internal IP address to assign to the
		// instance.
		ip_address?: string

		// Possible values: ["UNSPECIFIED_IPV6_ACCESS_TYPE", "INTERNAL",
		// "EXTERNAL"]
		ipv6_access_type?: string

		// Optional. An IPv6 internal network address for this network
		// interface.
		ipv6_address?: string

		// Optional. URL of the VPC network resource for this instance.
		network?:            string
		network_attachment?: string

		// Possible values: ["NIC_TYPE_UNSPECIFIED", "VIRTIO_NET",
		// "GVNIC"]
		nic_type?:    string
		queue_count?: number
		access_configs?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/network_interfaces/$defs/access_configs", [..._#defs."/$defs/compute_instance_restore_properties/$defs/network_interfaces/$defs/access_configs"]])
		alias_ip_ranges?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/network_interfaces/$defs/alias_ip_ranges", [..._#defs."/$defs/compute_instance_restore_properties/$defs/network_interfaces/$defs/alias_ip_ranges"]])
		ipv6_access_configs?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/network_interfaces/$defs/ipv6_access_configs", [..._#defs."/$defs/compute_instance_restore_properties/$defs/network_interfaces/$defs/ipv6_access_configs"]])

		// Possible values: ["STACK_TYPE_UNSPECIFIED", "IPV4_ONLY",
		// "IPV4_IPV6"]
		stack_type?: string

		// Optional. The URL of the Subnetwork resource for this instance.
		subnetwork?: string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/network_interfaces/$defs/access_configs": close({
		external_ip?: string

		// Optional. The name of this access configuration.
		name?: string

		// Possible values: ["NETWORK_TIER_UNSPECIFIED", "PREMIUM",
		// "STANDARD"]
		network_tier?:                string
		external_ipv6?:               string
		external_ipv6_prefix_length?: number

		// Optional. The type of configuration. Possible values:
		// ["ACCESS_TYPE_UNSPECIFIED", "ONE_TO_ONE_NAT", "DIRECT_IPV6"]
		type?:                   string
		public_ptr_domain_name?: string
		set_public_ptr?:         bool
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/network_interfaces/$defs/alias_ip_ranges": close({
		ip_cidr_range?:         string
		subnetwork_range_name?: string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/network_interfaces/$defs/ipv6_access_configs": close({
		external_ip?: string

		// Optional. The name of this access configuration.
		name?: string

		// Possible values: ["NETWORK_TIER_UNSPECIFIED", "PREMIUM",
		// "STANDARD"]
		network_tier?:                string
		external_ipv6?:               string
		external_ipv6_prefix_length?: number

		// Optional. The type of configuration. Possible values:
		// ["ACCESS_TYPE_UNSPECIFIED", "ONE_TO_ONE_NAT", "DIRECT_IPV6"]
		type?:                   string
		public_ptr_domain_name?: string
		set_public_ptr?:         bool
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/network_performance_config": close({
		// Possible values: ["TIER_UNSPECIFIED", "DEFAULT", "TIER_1"]
		total_egress_bandwidth_tier?: string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/params": close({
		resource_manager_tags?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/params/$defs/resource_manager_tags", [..._#defs."/$defs/compute_instance_restore_properties/$defs/params/$defs/resource_manager_tags"]])
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/params/$defs/resource_manager_tags": close({
		key!:   string
		value?: string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/scheduling": close({
		// Possible values: ["INSTANCE_TERMINATION_ACTION_UNSPECIFIED",
		// "DELETE", "STOP"]
		instance_termination_action?: string
		local_ssd_recovery_timeout?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/scheduling/$defs/local_ssd_recovery_timeout", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/scheduling/$defs/local_ssd_recovery_timeout"]])
		automatic_restart?: bool

		// Possible values: ["ON_HOST_MAINTENANCE_UNSPECIFIED",
		// "TERMINATE", "MIGRATE"]
		on_host_maintenance?: string
		min_node_cpus?:       number
		max_run_duration?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/scheduling/$defs/max_run_duration", list.MaxItems(1) & [..._#defs."/$defs/compute_instance_restore_properties/$defs/scheduling/$defs/max_run_duration"]])
		node_affinities?: matchN(1, [_#defs."/$defs/compute_instance_restore_properties/$defs/scheduling/$defs/node_affinities", [..._#defs."/$defs/compute_instance_restore_properties/$defs/scheduling/$defs/node_affinities"]])

		// Possible values: ["PROVISIONING_MODEL_UNSPECIFIED", "STANDARD",
		// "SPOT"]
		provisioning_model?: string
		preemptible?:        bool
		termination_time?:   string
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/scheduling/$defs/local_ssd_recovery_timeout": close({
		nanos?:   number
		seconds?: number
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/scheduling/$defs/max_run_duration": close({
		nanos?:   number
		seconds?: number
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/scheduling/$defs/node_affinities": close({
		key?: string

		// Possible values: ["OPERATOR_UNSPECIFIED", "IN", "NOT_IN"]
		operator?: string
		values?: [...string]
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/service_accounts": close({
		email?: string
		scopes?: [...string]
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/shielded_instance_config": close({
		enable_integrity_monitoring?: bool
		enable_secure_boot?:          bool
		enable_vtpm?:                 bool
	})

	_#defs: "/$defs/compute_instance_restore_properties/$defs/tags": close({
		items?: [...string]
	})

	_#defs: "/$defs/disk_restore_properties/$defs/disk_encryption_key": close({
		kms_key_name?:            string
		kms_key_service_account?: string
		raw_key?:                 string
		rsa_encrypted_key?:       string
	})

	_#defs: "/$defs/disk_restore_properties/$defs/guest_os_feature": close({
		// Possible values: ["FEATURE_TYPE_UNSPECIFIED",
		// "VIRTIO_SCSI_MULTIQUEUE", "WINDOWS", "MULTI_IP_SUBNET",
		// "UEFI_COMPATIBLE", "SECURE_BOOT", "GVNIC", "SEV_CAPABLE",
		// "BARE_METAL_LINUX_COMPATIBLE", "SUSPEND_RESUME_COMPATIBLE",
		// "SEV_LIVE_MIGRATABLE", "SEV_SNP_CAPABLE", "TDX_CAPABLE",
		// "IDPF", "SEV_LIVE_MIGRATABLE_V2"]
		type?: string
	})

	_#defs: "/$defs/disk_restore_properties/$defs/labels": close({
		key!:   string
		value?: string
	})

	_#defs: "/$defs/disk_restore_properties/$defs/resource_manager_tags": close({
		key!:   string
		value?: string
	})
}
