package res

import "list"

#google_compute_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_instance")
	close({
		// If true, allows Terraform to stop the instance to update its
		// properties. If you try to update a property that requires
		// stopping the instance without setting this field, the update
		// will fail.
		allow_stopping_for_update?: bool
		advanced_machine_features?: matchN(1, [#advanced_machine_features, list.MaxItems(1) & [...#advanced_machine_features]])

		// Whether sending and receiving of packets with non-matching
		// source or destination IPs is allowed.
		can_ip_forward?: bool

		// The CPU platform used by this instance.
		cpu_platform?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Current status of the instance.
		// This could be one of the following values: PROVISIONING,
		// STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING,
		// and TERMINATED.
		// For more information about the status of the instance, see
		// [Instance life
		// cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
		current_status?: string

		// Whether deletion protection is enabled on this instance.
		deletion_protection?: bool

		// A brief description of the resource.
		description?: string

		// Desired status of the instance. Either "RUNNING", "SUSPENDED"
		// or "TERMINATED".
		desired_status?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Whether the instance has virtual displays enabled.
		enable_display?: bool

		// A custom hostname for the instance. Must be a fully qualified
		// DNS name and RFC-1035-valid. Valid format is a series of
		// labels 1-63 characters long matching the regular expression
		// [a-z]([-a-z0-9]*[a-z0-9]), concatenated with periods. The
		// entire hostname must not exceed 253 characters. Changing this
		// forces a new resource to be created.
		hostname?: string
		id?:       string

		// The server-assigned unique identifier of this instance.
		instance_id?: string

		// Action to be taken when a customer's encryption key is revoked.
		// Supports "STOP" and "NONE", with "NONE" being the default.
		key_revocation_action_type?: string

		// The unique fingerprint of the labels.
		label_fingerprint?: string

		// A set of key/value label pairs assigned to the instance.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The machine type to create.
		machine_type!: string
		attached_disk?: matchN(1, [#attached_disk, [...#attached_disk]])
		boot_disk!: matchN(1, [#boot_disk, list.MaxItems(1) & [_, ...] & [...#boot_disk]])
		confidential_instance_config?: matchN(1, [#confidential_instance_config, list.MaxItems(1) & [...#confidential_instance_config]])
		guest_accelerator?: matchN(1, [#guest_accelerator, [...#guest_accelerator]])
		instance_encryption_key?: matchN(1, [#instance_encryption_key, list.MaxItems(1) & [...#instance_encryption_key]])
		network_interface!: matchN(1, [#network_interface, [_, ...] & [...#network_interface]])
		network_performance_config?: matchN(1, [#network_performance_config, list.MaxItems(1) & [...#network_performance_config]])

		// Metadata key/value pairs made available within the instance.
		metadata?: [string]: string
		params?: matchN(1, [#params, list.MaxItems(1) & [...#params]])
		reservation_affinity?: matchN(1, [#reservation_affinity, list.MaxItems(1) & [...#reservation_affinity]])
		scheduling?: matchN(1, [#scheduling, list.MaxItems(1) & [...#scheduling]])
		scratch_disk?: matchN(1, [#scratch_disk, [...#scratch_disk]])
		service_account?: matchN(1, [#service_account, list.MaxItems(1) & [...#service_account]])
		shielded_instance_config?: matchN(1, [#shielded_instance_config, list.MaxItems(1) & [...#shielded_instance_config]])

		// The unique fingerprint of the metadata.
		metadata_fingerprint?: string
		timeouts?:             #timeouts

		// Metadata startup scripts made available within the instance.
		metadata_startup_script?: string

		// The minimum CPU platform specified for the VM instance.
		min_cpu_platform?: string

		// The name of the instance. One of name or self_link must be
		// provided.
		name!: string

		// The ID of the project in which the resource belongs. If
		// self_link is provided, this value is ignored. If neither
		// self_link nor project are provided, the provider project is
		// used.
		project?: string

		// A list of self_links of resource policies to attach to the
		// instance. Currently a max of 1 resource policy is supported.
		resource_policies?: [...string]

		// The URI of the created resource.
		self_link?: string

		// The list of tags attached to the instance.
		tags?: [...string]

		// The unique fingerprint of the tags.
		tags_fingerprint?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The zone of the instance. If self_link is provided, this value
		// is ignored. If neither self_link nor zone are provided, the
		// provider zone is used.
		zone?: string
	})

	#advanced_machine_features: close({
		// Whether to enable nested virtualization or not.
		enable_nested_virtualization?: bool

		// Whether to enable UEFI networking for the instance.
		enable_uefi_networking?: bool

		// The PMU is a hardware component within the CPU core that
		// monitors how the processor runs code. Valid values for the
		// level of PMU are "STANDARD", "ENHANCED", and "ARCHITECTURAL".
		performance_monitoring_unit?: string

		// The number of threads per physical core. To disable
		// simultaneous multithreading (SMT) set this to 1. If unset, the
		// maximum number of threads supported per core by the underlying
		// processor is assumed.
		threads_per_core?: number

		// Turbo frequency mode to use for the instance. Currently
		// supported modes is "ALL_CORE_MAX".
		turbo_mode?: string

		// The number of physical cores to expose to an instance. Multiply
		// by the number of threads per core to compute the total number
		// of virtual CPUs to expose to the instance. If unset, the
		// number of cores is inferred from the instance\'s nominal CPU
		// count and the underlying platform\'s SMT width.
		visible_core_count?: number
	})

	#attached_disk: close({
		// Name with which the attached disk is accessible under
		// /dev/disk/by-id/
		device_name?: string

		// A 256-bit customer-supplied encryption key, encoded in RFC 4648
		// base64 to encrypt this disk. Only one of kms_key_self_link,
		// disk_encryption_key_rsa and disk_encryption_key_raw may be
		// set.
		disk_encryption_key_raw?: string

		// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
		// customer-supplied encryption key to either encrypt or decrypt
		// this resource. Only one of kms_key_self_link,
		// disk_encryption_key_rsa and disk_encryption_key_raw may be
		// set.
		disk_encryption_key_rsa?: string

		// The RFC 4648 base64 encoded SHA-256 hash of the
		// customer-supplied encryption key that protects this resource.
		disk_encryption_key_sha256?: string

		// The service account being used for the encryption request for
		// the given KMS key. If absent, the Compute Engine default
		// service account is used
		disk_encryption_service_account?: string

		// Whether to force attach the regional disk even if it's
		// currently attached to another instance. If you try to force
		// attach a zonal disk to an instance, you will receive an error.
		// Setting this parameter cause VM recreation.
		force_attach?: bool

		// The self_link of the encryption key that is stored in Google
		// Cloud KMS to encrypt this disk. Only one of kms_key_self_link,
		// disk_encryption_key_rsa and disk_encryption_key_raw may be
		// set.
		kms_key_self_link?: string

		// Read/write mode for the disk. One of "READ_ONLY" or
		// "READ_WRITE".
		mode?: string

		// The name or self_link of the disk attached to this instance.
		source!: string
	})

	#boot_disk: close({
		// Whether the disk will be auto-deleted when the instance is
		// deleted.
		auto_delete?: bool

		// Name with which attached disk will be accessible under
		// /dev/disk/by-id/
		device_name?: string

		// A 256-bit customer-supplied encryption key, encoded in RFC 4648
		// base64 to encrypt this disk. Only one of kms_key_self_link,
		// disk_encryption_key_raw and disk_encryption_key_rsa may be
		// set.
		disk_encryption_key_raw?: string

		// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
		// customer-supplied encryption key to either encrypt or decrypt
		// this resource. Only one of kms_key_self_link,
		// disk_encryption_key_raw and disk_encryption_key_rsa may be
		// set.
		disk_encryption_key_rsa?: string

		// The RFC 4648 base64 encoded SHA-256 hash of the
		// customer-supplied encryption key that protects this resource.
		disk_encryption_key_sha256?: string

		// The service account being used for the encryption request for
		// the given KMS key. If absent, the Compute Engine default
		// service account is used
		disk_encryption_service_account?: string

		// Whether to force attach the regional disk even if it's
		// currently attached to another instance. If you try to force
		// attach a zonal disk to an instance, you will receive an error.
		// Setting this parameter cause VM recreation.
		force_attach?: bool

		// A list of features to enable on the guest operating system.
		// Applicable only for bootable images.
		guest_os_features?: [...string]
		initialize_params?: matchN(1, [_#defs."/$defs/boot_disk/$defs/initialize_params", list.MaxItems(1) & [..._#defs."/$defs/boot_disk/$defs/initialize_params"]])

		// The disk interface used for attaching this disk. One of SCSI or
		// NVME. (This field is shared with attached_disk and only used
		// for specific cases, please don't specify this field without
		// advice from Google.)
		interface?: string

		// The self_link of the encryption key that is stored in Google
		// Cloud KMS to encrypt this disk. Only one of kms_key_self_link,
		// disk_encryption_key_raw and disk_encryption_key_rsa may be
		// set.
		kms_key_self_link?: string

		// Read/write mode for the disk. One of "READ_ONLY" or
		// "READ_WRITE".
		mode?: string

		// The name or self_link of the disk attached to this instance.
		source?: string
	})

	#confidential_instance_config: close({
		// The confidential computing technology the instance uses.
		// SEV is an AMD feature. TDX is an Intel feature. One of the
		// following
		// values is required: SEV, SEV_SNP, TDX. If SEV_SNP,
		// min_cpu_platform =
		// "AMD Milan" is currently required.
		confidential_instance_type?: string

		// Defines whether the instance should have confidential compute
		// enabled. Field will be deprecated in a future release
		enable_confidential_compute?: bool
	})

	#guest_accelerator: close({
		// The number of the guest accelerator cards exposed to this
		// instance.
		count!: number

		// The accelerator type resource exposed to this instance. E.g.
		// nvidia-tesla-k80.
		type!: string
	})

	#instance_encryption_key: close({
		// The self link of the encryption key that is stored in Google
		// Cloud KMS.
		kms_key_self_link?: string

		// The service account being used for the encryption request for
		// the given KMS key. If absent, the Compute Engine default
		// service account is used.
		kms_key_service_account?: string

		// The SHA256 hash of the customer's encryption key.
		sha256?: string
	})

	#network_interface: close({
		// The prefix length of the primary internal IPv6 range.
		internal_ipv6_prefix_length?: number

		// One of EXTERNAL, INTERNAL to indicate whether the IP can be
		// accessed from the Internet. This field is always inherited
		// from its subnetwork.
		ipv6_access_type?: string

		// An IPv6 internal network address for this network interface. If
		// not specified, Google Cloud will automatically assign an
		// internal IPv6 address from the instance's subnetwork.
		ipv6_address?: string

		// The name of the interface
		name?: string

		// The name or self_link of the network attached to this
		// interface.
		network?: string

		// The URL of the network attachment that this interface should
		// connect to in the following format:
		// projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.
		network_attachment?: string

		// The private IP address assigned to the instance.
		network_ip?: string

		// The type of vNIC to be used on this interface. Possible
		// values:GVNIC, VIRTIO_NET, IDPF, MRDMA, and IRDMA
		nic_type?: string
		access_config?: matchN(1, [_#defs."/$defs/network_interface/$defs/access_config", [..._#defs."/$defs/network_interface/$defs/access_config"]])
		alias_ip_range?: matchN(1, [_#defs."/$defs/network_interface/$defs/alias_ip_range", [..._#defs."/$defs/network_interface/$defs/alias_ip_range"]])
		ipv6_access_config?: matchN(1, [_#defs."/$defs/network_interface/$defs/ipv6_access_config", [..._#defs."/$defs/network_interface/$defs/ipv6_access_config"]])

		// The networking queue count that's specified by users for the
		// network interface. Both Rx and Tx queues will be set to this
		// number. It will be empty if not specified.
		queue_count?: number

		// The stack type for this network interface to identify whether
		// the IPv6 feature is enabled or not. If not specified,
		// IPV4_ONLY will be used.
		stack_type?: string

		// The name or self_link of the subnetwork attached to this
		// interface.
		subnetwork?: string

		// The project in which the subnetwork belongs.
		subnetwork_project?: string
	})

	#network_performance_config: close({
		// The egress bandwidth tier to enable. Possible values:TIER_1,
		// DEFAULT
		total_egress_bandwidth_tier!: string
	})

	#params: close({
		// A map of resource manager tags. Resource manager tag keys and
		// values have the same definition as resource manager tags. Keys
		// must be in the format tagKeys/{tag_key_id}, and values are in
		// the format tagValues/456. The field is ignored (both PUT &
		// PATCH) when empty.
		resource_manager_tags?: [string]: string
	})

	#reservation_affinity: close({
		specific_reservation?: matchN(1, [_#defs."/$defs/reservation_affinity/$defs/specific_reservation", list.MaxItems(1) & [..._#defs."/$defs/reservation_affinity/$defs/specific_reservation"]])

		// The type of reservation from which this instance can consume
		// resources.
		type!: string
	})

	#scheduling: close({
		// Specifies if the instance should be restarted if it was
		// terminated by Compute Engine (not a user).
		automatic_restart?: bool

		// Specifies the availability domain, which this instance should
		// be scheduled on.
		availability_domain?: number

		// Specifies the action GCE should take when SPOT VM is preempted.
		instance_termination_action?: string

		// Describes maintenance behavior for the instance. One of MIGRATE
		// or TERMINATE,
		on_host_maintenance?: string
		min_node_cpus?:       number

		// Whether the instance is preemptible.
		preemptible?: bool
		local_ssd_recovery_timeout?: matchN(1, [_#defs."/$defs/scheduling/$defs/local_ssd_recovery_timeout", list.MaxItems(1) & [..._#defs."/$defs/scheduling/$defs/local_ssd_recovery_timeout"]])
		max_run_duration?: matchN(1, [_#defs."/$defs/scheduling/$defs/max_run_duration", list.MaxItems(1) & [..._#defs."/$defs/scheduling/$defs/max_run_duration"]])
		node_affinities?: matchN(1, [_#defs."/$defs/scheduling/$defs/node_affinities", [..._#defs."/$defs/scheduling/$defs/node_affinities"]])
		on_instance_stop_action?: matchN(1, [_#defs."/$defs/scheduling/$defs/on_instance_stop_action", list.MaxItems(1) & [..._#defs."/$defs/scheduling/$defs/on_instance_stop_action"]])

		// Whether the instance is spot. If this is set as SPOT.
		provisioning_model?: string

		// Specifies the timestamp, when the instance will be terminated,
		// in RFC3339 text format. If specified, the instance termination
		// action
		// will be performed at the termination time.
		termination_time?: string
	})

	#scratch_disk: close({
		// Name with which the attached disk is accessible under
		// /dev/disk/by-id/
		device_name?: string

		// The disk interface used for attaching this disk. One of SCSI or
		// NVME.
		interface!: string

		// The size of the disk in gigabytes. One of 375 or 3000.
		size?: number
	})

	#service_account: close({
		// The service account e-mail address.
		email?: string

		// A list of service scopes.
		scopes!: [...string]
	})

	#shielded_instance_config: close({
		// Whether integrity monitoring is enabled for the instance.
		enable_integrity_monitoring?: bool

		// Whether secure boot is enabled for the instance.
		enable_secure_boot?: bool

		// Whether the instance uses vTPM.
		enable_vtpm?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/boot_disk/$defs/initialize_params": close({
		// The architecture of the disk. One of "X86_64" or "ARM64".
		architecture?: string

		// A flag to enable confidential compute mode on boot disk
		enable_confidential_compute?: bool

		// The image from which this disk was initialised.
		image?: string

		// A set of key/value label pairs assigned to the disk.
		labels?: [string]: string

		// Indicates how many IOPS to provision for the disk. This sets
		// the number of I/O operations per second that the disk can
		// handle.
		provisioned_iops?: number

		// Indicates how much throughput to provision for the disk. This
		// sets the number of throughput mb per second that the disk can
		// handle.
		provisioned_throughput?: number

		// A map of resource manager tags. Resource manager tag keys and
		// values have the same definition as resource manager tags. Keys
		// must be in the format tagKeys/{tag_key_id}, and values are in
		// the format tagValues/456. The field is ignored (both PUT &
		// PATCH) when empty.
		resource_manager_tags?: [string]: string

		// A list of self_links of resource policies to attach to the
		// instance's boot disk. Modifying this list will cause the
		// instance to recreate. Currently a max of 1 resource policy is
		// supported.
		resource_policies?: [...string]
		source_image_encryption_key?: matchN(1, [_#defs."/$defs/boot_disk/$defs/initialize_params/$defs/source_image_encryption_key", list.MaxItems(1) & [..._#defs."/$defs/boot_disk/$defs/initialize_params/$defs/source_image_encryption_key"]])
		source_snapshot_encryption_key?: matchN(1, [_#defs."/$defs/boot_disk/$defs/initialize_params/$defs/source_snapshot_encryption_key", list.MaxItems(1) & [..._#defs."/$defs/boot_disk/$defs/initialize_params/$defs/source_snapshot_encryption_key"]])

		// The size of the image in gigabytes.
		size?: number

		// The snapshot from which this disk was initialised.
		snapshot?: string

		// The URL of the storage pool in which the new disk is created
		storage_pool?: string

		// The Google Compute Engine disk type. Such as pd-standard,
		// pd-ssd or pd-balanced.
		type?: string
	})

	_#defs: "/$defs/boot_disk/$defs/initialize_params/$defs/source_image_encryption_key": close({
		// The self link of the encryption key that is stored in Google
		// Cloud KMS. Only one of kms_key_self_link, rsa_encrypted_key
		// and raw_key may be set.
		kms_key_self_link?: string

		// The service account being used for the encryption request for
		// the given KMS key. If absent, the Compute Engine default
		// service account is used.
		kms_key_service_account?: string

		// Specifies a 256-bit customer-supplied encryption key, encoded
		// in RFC 4648 base64 to either encrypt or decrypt this resource.
		// Only one of kms_key_self_link, rsa_encrypted_key and raw_key
		// may be set.
		raw_key?: string

		// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
		// customer-supplied encryption key to either encrypt or decrypt
		// this resource. Only one of kms_key_self_link,
		// rsa_encrypted_key and raw_key may be set.
		rsa_encrypted_key?: string

		// The SHA256 hash of the encryption key used to encrypt this
		// disk.
		sha256?: string
	})

	_#defs: "/$defs/boot_disk/$defs/initialize_params/$defs/source_snapshot_encryption_key": close({
		// The self link of the encryption key that is stored in Google
		// Cloud KMS. Only one of kms_key_self_link, rsa_encrypted_key
		// and raw_key may be set.
		kms_key_self_link?: string

		// The service account being used for the encryption request for
		// the given KMS key. If absent, the Compute Engine default
		// service account is used.
		kms_key_service_account?: string

		// Specifies a 256-bit customer-supplied encryption key, encoded
		// in RFC 4648 base64 to either encrypt or decrypt this resource.
		// Only one of kms_key_self_link, rsa_encrypted_key and raw_key
		// may be set.
		raw_key?: string

		// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
		// customer-supplied encryption key to either encrypt or decrypt
		// this resource. Only one of kms_key_self_link,
		// rsa_encrypted_key and raw_key may be set.
		rsa_encrypted_key?: string

		// The SHA256 hash of the encryption key used to encrypt this
		// disk.
		sha256?: string
	})

	_#defs: "/$defs/network_interface/$defs/access_config": close({
		// The IP address that is be 1:1 mapped to the instance's network
		// ip.
		nat_ip?: string

		// The networking tier used for configuring this instance. One of
		// PREMIUM or STANDARD.
		network_tier?: string

		// The DNS domain name for the public PTR record.
		public_ptr_domain_name?: string
	})

	_#defs: "/$defs/network_interface/$defs/alias_ip_range": close({
		// The IP CIDR range represented by this alias IP range.
		ip_cidr_range!: string

		// The subnetwork secondary range name specifying the secondary
		// range from which to allocate the IP CIDR range for this alias
		// IP range.
		subnetwork_range_name?: string
	})

	_#defs: "/$defs/network_interface/$defs/ipv6_access_config": close({
		// The first IPv6 address of the external IPv6 range associated
		// with this instance, prefix length is stored in
		// externalIpv6PrefixLength in ipv6AccessConfig. To use a static
		// external IP address, it must be unused and in the same region
		// as the instance's zone. If not specified, Google Cloud will
		// automatically assign an external IPv6 address from the
		// instance's subnetwork.
		external_ipv6?: string

		// The prefix length of the external IPv6 range.
		external_ipv6_prefix_length?: string

		// The name of this access configuration. In ipv6AccessConfigs,
		// the recommended name is External IPv6.
		name?: string

		// The service-level to be provided for IPv6 traffic when the
		// subnet has an external subnet. Only PREMIUM tier is valid for
		// IPv6
		network_tier!: string

		// The domain name to be used when creating DNSv6 records for the
		// external IPv6 ranges.
		public_ptr_domain_name?: string
	})

	_#defs: "/$defs/reservation_affinity/$defs/specific_reservation": close({
		// Corresponds to the label key of a reservation resource. To
		// target a SPECIFIC_RESERVATION by name, specify
		// compute.googleapis.com/reservation-name as the key and specify
		// the name of your reservation as the only value.
		key!: string

		// Corresponds to the label values of a reservation resource.
		values!: [...string]
	})

	_#defs: "/$defs/scheduling/$defs/local_ssd_recovery_timeout": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are represented
		// with a 0 seconds field and a positive nanos field. Must
		// be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second.
		// Must be from 0 to 315,576,000,000 inclusive.
		seconds!: number
	})

	_#defs: "/$defs/scheduling/$defs/max_run_duration": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are represented
		// with a 0 seconds field and a positive nanos field. Must
		// be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second.
		// Must be from 0 to 315,576,000,000 inclusive.
		seconds!: number
	})

	_#defs: "/$defs/scheduling/$defs/node_affinities": close({
		key!:      string
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/scheduling/$defs/on_instance_stop_action": close({
		// If true, the contents of any attached Local SSD disks will be
		// discarded.
		discard_local_ssd?: bool
	})
}
