package res

import "list"

#google_compute_instance_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_instance_template")
	close({
		// Whether to allow sending and receiving of packets with
		// non-matching source or destination IPs. This defaults to
		// false.
		can_ip_forward?: bool

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// A brief description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// A description of the instance.
		instance_description?: string

		// Action to be taken when a customer's encryption key is revoked.
		// Supports "STOP" and "NONE", with "NONE" being the default.
		key_revocation_action_type?: string

		// A set of key/value label pairs to assign to instances created
		// from this template.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The machine type to create. To create a machine with a custom
		// type (such as extended memory), format the value like
		// custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB
		// of RAM.
		machine_type!: string

		// Metadata key/value pairs to make available from within
		// instances created from this template.
		metadata?: [string]: string

		// The unique fingerprint of the metadata.
		metadata_fingerprint?: string

		// An alternative to using the startup-script metadata key, mostly
		// to match the compute_instance resource. This replaces the
		// startup-script metadata key on the created instance and thus
		// the two mechanisms are not allowed to be used simultaneously.
		metadata_startup_script?: string

		// Specifies a minimum CPU platform. Applicable values are the
		// friendly names of CPU platforms, such as Intel Haswell or
		// Intel Skylake.
		min_cpu_platform?: string

		// The name of the instance template. If you leave this blank,
		// Terraform will auto-generate a unique name.
		name?: string

		// Creates a unique name beginning with the specified prefix.
		// Conflicts with name. Max length is 54 characters. Prefixes
		// with lengths longer than 37 characters will use a shortened
		// UUID that will be more prone to collisions.
		name_prefix?: string

		// The ID of the template in numeric format.
		numeric_id?: string
		advanced_machine_features?: matchN(1, [#advanced_machine_features, list.MaxItems(1) & [...#advanced_machine_features]])
		confidential_instance_config?: matchN(1, [#confidential_instance_config, list.MaxItems(1) & [...#confidential_instance_config]])
		disk!: matchN(1, [#disk, [_, ...] & [...#disk]])
		guest_accelerator?: matchN(1, [#guest_accelerator, [...#guest_accelerator]])
		network_interface?: matchN(1, [#network_interface, [...#network_interface]])
		network_performance_config?: matchN(1, [#network_performance_config, list.MaxItems(1) & [...#network_performance_config]])
		reservation_affinity?: matchN(1, [#reservation_affinity, list.MaxItems(1) & [...#reservation_affinity]])
		scheduling?: matchN(1, [#scheduling, list.MaxItems(1) & [...#scheduling]])
		service_account?: matchN(1, [#service_account, list.MaxItems(1) & [...#service_account]])
		shielded_instance_config?: matchN(1, [#shielded_instance_config, list.MaxItems(1) & [...#shielded_instance_config]])
		timeouts?: #timeouts

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// An instance template is a global resource that is not bound to
		// a zone or a region. However, you can still specify some
		// regional resources in an instance template, which restricts
		// the template to the region where that resource resides. For
		// example, a custom subnetwork resource is tied to a specific
		// region. Defaults to the region of the Provider if no value is
		// given.
		region?: string

		// A map of resource manager tags.
		// Resource manager tag keys and values have the same definition
		// as resource manager tags.
		// Keys must be in the format tagKeys/{tag_key_id}, and values are
		// in the format tagValues/456.
		// The field is ignored (both PUT & PATCH) when empty.
		resource_manager_tags?: [string]: string

		// A list of self_links of resource policies to attach to the
		// instance. Currently a max of 1 resource policy is supported.
		resource_policies?: [...string]

		// The URI of the created resource.
		self_link?: string

		// A special URI of the created resource that uniquely identifies
		// this instance template.
		self_link_unique?: string

		// Tags to attach to the instance.
		tags?: [...string]

		// The unique fingerprint of the tags.
		tags_fingerprint?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#advanced_machine_features: close({
		// Whether to enable nested virtualization or not.
		enable_nested_virtualization?: bool

		// Whether to enable UEFI networking or not.
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

	#confidential_instance_config: close({
		// The confidential computing technology the instance uses.
		// SEV is an AMD feature. TDX is an Intel feature. One of the
		// following
		// values is required: SEV, SEV_SNP, TDX. If SEV_SNP,
		// min_cpu_platform =
		// "AMD Milan" is currently required.
		confidential_instance_type?: string

		// Defines whether the instance should have confidential compute
		// enabled. Field will be deprecated in a future release.
		enable_confidential_compute?: bool
	})

	#disk: close({
		// The architecture of the image. Allowed values are ARM64 or
		// X86_64.
		architecture?: string

		// Whether or not the disk should be auto-deleted. This defaults
		// to true.
		auto_delete?: bool

		// Indicates that this is a boot disk.
		boot?: bool

		// A unique device name that is reflected into the /dev/ tree of a
		// Linux operating system running within the instance. If not
		// specified, the server chooses a default device name to apply
		// to this disk.
		device_name?: string

		// Name of the disk. When not provided, this defaults to the name
		// of the instance.
		disk_name?: string

		// The size of the image in gigabytes. If not specified, it will
		// inherit the size of its base image. For SCRATCH disks, the
		// size must be one of 375 or 3000 GB, with a default of 375 GB.
		disk_size_gb?: number

		// The Google Compute Engine disk type. Such as "pd-ssd",
		// "local-ssd", "pd-balanced" or "pd-standard".
		disk_type?: string

		// A list of features to enable on the guest operating system.
		// Applicable only for bootable images.
		guest_os_features?: [...string]

		// Specifies the disk interface to use for attaching this disk.
		interface?: string

		// A set of key/value label pairs to assign to disks,
		labels?: [string]: string

		// The mode in which to attach this disk, either READ_WRITE or
		// READ_ONLY. If you are attaching or creating a boot disk, this
		// must read-write mode.
		mode?: string

		// Indicates how many IOPS to provision for the disk. This sets
		// the number of I/O operations per second that the disk can
		// handle. For more details, see the [Extreme persistent disk
		// documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk)
		// or the [Hyperdisk
		// documentation](https://cloud.google.com/compute/docs/disks/hyperdisks)
		// depending on the selected disk_type.
		provisioned_iops?: number
		disk_encryption_key?: matchN(1, [_#defs."/$defs/disk/$defs/disk_encryption_key", list.MaxItems(1) & [..._#defs."/$defs/disk/$defs/disk_encryption_key"]])
		source_image_encryption_key?: matchN(1, [_#defs."/$defs/disk/$defs/source_image_encryption_key", list.MaxItems(1) & [..._#defs."/$defs/disk/$defs/source_image_encryption_key"]])
		source_snapshot_encryption_key?: matchN(1, [_#defs."/$defs/disk/$defs/source_snapshot_encryption_key", list.MaxItems(1) & [..._#defs."/$defs/disk/$defs/source_snapshot_encryption_key"]])

		// Indicates how much throughput to provision for the disk, in
		// MB/s. This sets the amount of data that can be read or written
		// from the disk per second. Values must greater than or equal to
		// 1. For more details, see the [Hyperdisk
		// documentation](https://cloud.google.com/compute/docs/disks/hyperdisks).
		provisioned_throughput?: number

		// A map of resource manager tags. Resource manager tag keys and
		// values have the same definition as resource manager tags. Keys
		// must be in the format tagKeys/{tag_key_id}, and values are in
		// the format tagValues/456. The field is ignored (both PUT &
		// PATCH) when empty.
		resource_manager_tags?: [string]: string

		// A list (short name or id) of resource policies to attach to
		// this disk. Currently a max of 1 resource policy is supported.
		resource_policies?: [...string]

		// The name (not self_link) of the disk (such as those managed by
		// google_compute_disk) to attach. ~> Note: Either source or
		// source_image is required when creating a new instance except
		// for when creating a local SSD.
		source?: string

		// The image from which to initialize this disk. This can be one
		// of: the image's self_link,
		// projects/{project}/global/images/{image},
		// projects/{project}/global/images/family/{family},
		// global/images/{image}, global/images/family/{family},
		// family/{family}, {project}/{family}, {project}/{image},
		// {family}, or {image}. ~> Note: Either source or source_image
		// is required when creating a new instance except for when
		// creating a local SSD.
		source_image?: string

		// The source snapshot to create this disk. When creating
		// a new instance, one of initializeParams.sourceSnapshot,
		// initializeParams.sourceImage, or disks.source is
		// required except for local SSD.
		source_snapshot?: string

		// The type of Google Compute Engine disk, can be either "SCRATCH"
		// or "PERSISTENT".
		type?: string
	})

	#guest_accelerator: close({
		// The number of the guest accelerator cards exposed to this
		// instance.
		count!: number

		// The accelerator type resource to expose to this instance. E.g.
		// nvidia-tesla-k80.
		type!: string
	})

	#network_interface: close({
		// Indicates whether igmp query is enabled on the network
		// interface or not. If enabled, also indicates the version of
		// IGMP supported.
		igmp_query?: string

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

		// The name of the network_interface.
		name?: string

		// The name or self_link of the network to attach this interface
		// to. Use network attribute for Legacy or Auto subnetted
		// networks and subnetwork for custom subnetted networks.
		network?: string

		// The URL of the network attachment that this interface should
		// connect to in the following format:
		// projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.
		network_attachment?: string

		// The private IP address to assign to the instance. If empty, the
		// address will be automatically assigned.
		network_ip?: string

		// The type of vNIC to be used on this interface. Possible
		// values:GVNIC, VIRTIO_NET, MRDMA, and IRDMA
		nic_type?: string

		// Name of the parent network interface of a dynamic network
		// interface.
		parent_nic_name?: string
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

		// The name of the subnetwork to attach this interface to. The
		// subnetwork must exist in the same region this instance will be
		// created in. Either network or subnetwork must be provided.
		subnetwork?: string

		// The ID of the project in which the subnetwork belongs. If it is
		// not provided, the provider project is used.
		subnetwork_project?: string

		// VLAN tag of a dynamic network interface, must be an integer in
		// the range from 2 to 255 inclusively.
		vlan?: number
	})

	#network_performance_config: close({
		// The egress bandwidth tier to enable. Possible values:TIER_1,
		// DEFAULT
		total_egress_bandwidth_tier!: string
	})

	#reservation_affinity: close({
		specific_reservation?: matchN(1, [_#defs."/$defs/reservation_affinity/$defs/specific_reservation", list.MaxItems(1) & [..._#defs."/$defs/reservation_affinity/$defs/specific_reservation"]])

		// The type of reservation from which this instance can consume
		// resources.
		type!: string
	})

	#scheduling: close({
		// Specifies whether the instance should be automatically
		// restarted if it is terminated by Compute Engine (not
		// terminated by a user). This defaults to true.
		automatic_restart?: bool

		// Specifies the availability domain, which this instance should
		// be scheduled on.
		availability_domain?: number

		// Specifies the action GCE should take when SPOT VM is preempted.
		instance_termination_action?: string

		// Minimum number of cpus for the instance.
		min_node_cpus?: number

		// Defines the maintenance behavior for this instance.
		on_host_maintenance?: string
		local_ssd_recovery_timeout?: matchN(1, [_#defs."/$defs/scheduling/$defs/local_ssd_recovery_timeout", [..._#defs."/$defs/scheduling/$defs/local_ssd_recovery_timeout"]])
		max_run_duration?: matchN(1, [_#defs."/$defs/scheduling/$defs/max_run_duration", list.MaxItems(1) & [..._#defs."/$defs/scheduling/$defs/max_run_duration"]])
		node_affinities?: matchN(1, [_#defs."/$defs/scheduling/$defs/node_affinities", [..._#defs."/$defs/scheduling/$defs/node_affinities"]])
		on_instance_stop_action?: matchN(1, [_#defs."/$defs/scheduling/$defs/on_instance_stop_action", list.MaxItems(1) & [..._#defs."/$defs/scheduling/$defs/on_instance_stop_action"]])

		// Allows instance to be preempted. This defaults to false.
		preemptible?: bool

		// Whether the instance is spot. If this is set as SPOT.
		provisioning_model?: string

		// Specifies the timestamp, when the instance will be terminated,
		// in RFC3339 text format. If specified, the instance termination
		// action
		// will be performed at the termination time.
		termination_time?: string
	})

	#service_account: close({
		// The service account e-mail address. If not given, the default
		// Google Compute Engine service account is used.
		email?: string

		// A list of service scopes. Both OAuth2 URLs and gcloud short
		// names are supported. To allow full access to all Cloud APIs,
		// use the cloud-platform scope.
		scopes!: [...string]
	})

	#shielded_instance_config: close({
		// Compare the most recent boot measurements to the integrity
		// policy baseline and return a pair of pass/fail results
		// depending on whether they match or not. Defaults to true.
		enable_integrity_monitoring?: bool

		// Verify the digital signature of all boot components, and halt
		// the boot process if signature verification fails. Defaults to
		// false.
		enable_secure_boot?: bool

		// Use a virtualized trusted platform module, which is a
		// specialized computer chip you can use to encrypt objects like
		// keys and certificates. Defaults to true.
		enable_vtpm?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/disk/$defs/disk_encryption_key": close({
		// The self link of the encryption key that is stored in Google
		// Cloud KMS.
		kms_key_self_link?: string

		// The service account being used for the encryption request for
		// the given KMS key. If absent, the Compute Engine default
		// service account is used.
		kms_key_service_account?: string
	})

	_#defs: "/$defs/disk/$defs/source_image_encryption_key": close({
		// The self link of the encryption key that is stored in
		// Google Cloud KMS. Only one of kms_key_self_link,
		// rsa_encrypted_key and raw_key may be set.
		kms_key_self_link?: string

		// The service account being used for the encryption
		// request for the given KMS key. If absent, the Compute
		// Engine default service account is used.
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
	})

	_#defs: "/$defs/disk/$defs/source_snapshot_encryption_key": close({
		// The self link of the encryption key that is stored in
		// Google Cloud KMS. Only one of kms_key_self_link,
		// rsa_encrypted_key and raw_key may be set.
		kms_key_self_link?: string

		// The service account being used for the encryption
		// request for the given KMS key. If absent, the Compute
		// Engine default service account is used.
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
	})

	_#defs: "/$defs/network_interface/$defs/access_config": close({
		// The IP address that will be 1:1 mapped to the instance's
		// network ip. If not given, one will be generated.
		nat_ip?: string

		// The networking tier used for configuring this instance
		// template. This field can take the following values: PREMIUM,
		// STANDARD, FIXED_STANDARD. If this field is not specified, it
		// is assumed to be PREMIUM.
		network_tier?: string

		// The DNS domain name for the public PTR record.The DNS domain
		// name for the public PTR record.
		public_ptr_domain_name?: string
	})

	_#defs: "/$defs/network_interface/$defs/alias_ip_range": close({
		// The IP CIDR range represented by this alias IP range. This IP
		// CIDR range must belong to the specified subnetwork and cannot
		// contain IP addresses reserved by system or used by other
		// network interfaces. At the time of writing only a netmask
		// (e.g. /24) may be supplied, with a CIDR format resulting in an
		// API error.
		ip_cidr_range!: string

		// The subnetwork secondary range name specifying the secondary
		// range from which to allocate the IP CIDR range for this alias
		// IP range. If left unspecified, the primary range of the
		// subnetwork will be used.
		subnetwork_range_name?: string
	})

	_#defs: "/$defs/network_interface/$defs/ipv6_access_config": close({
		// The first IPv6 address of the external IPv6 range associated
		// with this instance, prefix length is stored in
		// externalIpv6PrefixLength in ipv6AccessConfig. The field is
		// output only, an IPv6 address from a subnetwork associated with
		// the instance will be allocated dynamically.
		external_ipv6?: string

		// The prefix length of the external IPv6 range.
		external_ipv6_prefix_length?: string

		// The name of this access configuration.
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
