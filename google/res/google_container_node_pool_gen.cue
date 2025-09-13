package res

import "list"

#google_container_node_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_container_node_pool")
	close({
		// The cluster to create the node pool for. Cluster must be
		// present in location provided for zonal clusters.
		cluster!: string
		id?:      string

		// The initial number of nodes for the pool. In regional or
		// multi-zonal clusters, this is the number of nodes per zone.
		// Changing this will force recreation of the resource.
		initial_node_count?: number

		// The resource URLs of the managed instance groups associated
		// with this node pool.
		instance_group_urls?: [...string]

		// The location (region or zone) of the cluster.
		location?: string

		// List of instance group URLs which have been assigned to this
		// node pool.
		managed_instance_group_urls?: [...string]

		// The maximum number of pods per node in this node pool. Note
		// that this does not work on node pools which are "route-based"
		// - that is, node pools belonging to clusters that do not have
		// IP Aliasing enabled.
		max_pods_per_node?: number

		// The name of the node pool. If left blank, Terraform will
		// auto-generate a unique name.
		name?: string
		autoscaling?: matchN(1, [#autoscaling, list.MaxItems(1) & [...#autoscaling]])

		// Creates a unique name for the node pool beginning with the
		// specified prefix. Conflicts with name.
		name_prefix?: string
		management?: matchN(1, [#management, list.MaxItems(1) & [...#management]])
		network_config?: matchN(1, [#network_config, list.MaxItems(1) & [...#network_config]])
		node_config?: matchN(1, [#node_config, list.MaxItems(1) & [...#node_config]])
		placement_policy?: matchN(1, [#placement_policy, list.MaxItems(1) & [...#placement_policy]])
		queued_provisioning?: matchN(1, [#queued_provisioning, list.MaxItems(1) & [...#queued_provisioning]])
		timeouts?: #timeouts
		upgrade_settings?: matchN(1, [#upgrade_settings, list.MaxItems(1) & [...#upgrade_settings]])

		// The number of nodes per instance group. This field can be used
		// to update the number of nodes per instance group but should
		// not be used alongside autoscaling.
		node_count?: number

		// The list of zones in which the node pool's nodes should be
		// located. Nodes must be in the region of their regional cluster
		// or in the same region as their cluster's zone for zonal
		// clusters. If unspecified, the cluster-level node_locations
		// will be used.
		node_locations?: [...string]
		operation?: string

		// The ID of the project in which to create the node pool. If
		// blank, the provider-configured project will be used.
		project?: string

		// The Kubernetes version for the nodes in this pool. Note that if
		// this field and auto_upgrade are both specified, they will
		// fight each other for what the node version should be, so
		// setting both is highly discouraged. While a fuzzy version can
		// be specified, it's recommended that you specify explicit
		// versions as Terraform will see spurious diffs when fuzzy
		// versions are used. See the google_container_engine_versions
		// data source's version_prefix field to approximate fuzzy
		// versions in a Terraform-compatible way.
		version?: string
	})

	#autoscaling: close({
		// Location policy specifies the algorithm used when scaling-up
		// the node pool. "BALANCED" - Is a best effort policy that aims
		// to balance the sizes of available zones. "ANY" - Instructs the
		// cluster autoscaler to prioritize utilization of unused
		// reservations, and reduces preemption risk for Spot VMs.
		location_policy?: string

		// Maximum number of nodes per zone in the node pool. Must be >=
		// min_node_count. Cannot be used with total limits.
		max_node_count?: number

		// Minimum number of nodes per zone in the node pool. Must be >=0
		// and <= max_node_count. Cannot be used with total limits.
		min_node_count?: number

		// Maximum number of all nodes in the node pool. Must be >=
		// total_min_node_count. Cannot be used with per zone limits.
		total_max_node_count?: number

		// Minimum number of all nodes in the node pool. Must be >=0 and
		// <= total_max_node_count. Cannot be used with per zone limits.
		total_min_node_count?: number
	})

	#management: close({
		// Whether the nodes will be automatically repaired. Enabled by
		// default.
		auto_repair?: bool

		// Whether the nodes will be automatically upgraded. Enabled by
		// default.
		auto_upgrade?: bool
	})

	#network_config: close({
		// Whether to create a new range for pod IPs in this node pool.
		// Defaults are provided for pod_range and pod_ipv4_cidr_block if
		// they are not specified.
		create_pod_range?: bool

		// Whether nodes have internal IP addresses only.
		enable_private_nodes?: bool

		// The IP address range for pod IPs in this node pool. Only
		// applicable if create_pod_range is true. Set to blank to have a
		// range chosen with the default size. Set to /netmask (e.g. /14)
		// to have a range chosen with a specific netmask. Set to a CIDR
		// notation (e.g. 10.96.0.0/14) to pick a specific range to use.
		pod_ipv4_cidr_block?: string

		// The ID of the secondary range for pod IPs. If create_pod_range
		// is true, this ID is used for the new range. If
		// create_pod_range is false, uses an existing secondary range
		// with this ID.
		pod_range?: string
		additional_node_network_configs?: matchN(1, [_#defs."/$defs/network_config/$defs/additional_node_network_configs", [..._#defs."/$defs/network_config/$defs/additional_node_network_configs"]])
		additional_pod_network_configs?: matchN(1, [_#defs."/$defs/network_config/$defs/additional_pod_network_configs", [..._#defs."/$defs/network_config/$defs/additional_pod_network_configs"]])

		// The subnetwork path for the node pool. Format:
		// projects/{project}/regions/{region}/subnetworks/{subnetwork} .
		// If the cluster is associated with multiple subnetworks, the
		// subnetwork for the node pool is picked based on the IP
		// utilization during node pool creation and is immutable.
		subnetwork?: string
		network_performance_config?: matchN(1, [_#defs."/$defs/network_config/$defs/network_performance_config", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/network_performance_config"]])
		pod_cidr_overprovision_config?: matchN(1, [_#defs."/$defs/network_config/$defs/pod_cidr_overprovision_config", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/pod_cidr_overprovision_config"]])
	})

	#node_config: close({
		// The Customer Managed Encryption Key used to encrypt the boot
		// disk attached to each node in the node pool.
		boot_disk_kms_key?: string
		advanced_machine_features?: matchN(1, [_#defs."/$defs/node_config/$defs/advanced_machine_features", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/advanced_machine_features"]])

		// Size of the disk attached to each node, specified in GB. The
		// smallest allowed disk size is 10GB.
		disk_size_gb?: number

		// Type of the disk attached to each node. Such as pd-standard,
		// pd-balanced or pd-ssd
		disk_type?: string

		// List of kubernetes taints applied to each node.
		effective_taints?: [...close({
			effect?: string
			key?:    string
			value?:  string
		})]

		// If enabled boot disks are configured with confidential mode.
		enable_confidential_storage?: bool

		// Enables Flex Start provisioning model for the node pool
		flex_start?: bool

		// The image type to use for this node. Note that for a given
		// image type, the latest version of it will be used.
		image_type?: string

		// The map of Kubernetes labels (key/value pairs) to be applied to
		// each node. These will added in addition to any default
		// label(s) that Kubernetes may apply to the node.
		labels?: [string]: string

		// The number of local SSD disks to be attached to the node.
		local_ssd_count?: number

		// LocalSsdEncryptionMode specified the method used for encrypting
		// the local SSDs attached to the node.
		local_ssd_encryption_mode?: string

		// Type of logging agent that is used as the default value for
		// node pools in the cluster. Valid values include DEFAULT and
		// MAX_THROUGHPUT.
		logging_variant?: string

		// The name of a Google Compute Engine machine type.
		machine_type?: string

		// The runtime of each node in the node pool in seconds,
		// terminated by 's'. Example: "3600s".
		max_run_duration?: string

		// The metadata key/value pairs assigned to instances in the
		// cluster.
		metadata?: [string]: string
		boot_disk?: matchN(1, [_#defs."/$defs/node_config/$defs/boot_disk", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/boot_disk"]])
		confidential_nodes?: matchN(1, [_#defs."/$defs/node_config/$defs/confidential_nodes", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/confidential_nodes"]])
		containerd_config?: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/containerd_config"]])
		ephemeral_storage_local_ssd_config?: matchN(1, [_#defs."/$defs/node_config/$defs/ephemeral_storage_local_ssd_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/ephemeral_storage_local_ssd_config"]])
		fast_socket?: matchN(1, [_#defs."/$defs/node_config/$defs/fast_socket", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/fast_socket"]])
		gcfs_config?: matchN(1, [_#defs."/$defs/node_config/$defs/gcfs_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/gcfs_config"]])
		guest_accelerator?: matchN(1, [_#defs."/$defs/node_config/$defs/guest_accelerator", [..._#defs."/$defs/node_config/$defs/guest_accelerator"]])
		gvnic?: matchN(1, [_#defs."/$defs/node_config/$defs/gvnic", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/gvnic"]])
		host_maintenance_policy?: matchN(1, [_#defs."/$defs/node_config/$defs/host_maintenance_policy", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/host_maintenance_policy"]])
		kubelet_config?: matchN(1, [_#defs."/$defs/node_config/$defs/kubelet_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/kubelet_config"]])
		linux_node_config?: matchN(1, [_#defs."/$defs/node_config/$defs/linux_node_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/linux_node_config"]])
		local_nvme_ssd_block_config?: matchN(1, [_#defs."/$defs/node_config/$defs/local_nvme_ssd_block_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/local_nvme_ssd_block_config"]])
		reservation_affinity?: matchN(1, [_#defs."/$defs/node_config/$defs/reservation_affinity", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/reservation_affinity"]])
		secondary_boot_disks?: matchN(1, [_#defs."/$defs/node_config/$defs/secondary_boot_disks", list.MaxItems(127) & [..._#defs."/$defs/node_config/$defs/secondary_boot_disks"]])
		shielded_instance_config?: matchN(1, [_#defs."/$defs/node_config/$defs/shielded_instance_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/shielded_instance_config"]])
		sole_tenant_config?: matchN(1, [_#defs."/$defs/node_config/$defs/sole_tenant_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/sole_tenant_config"]])
		taint?: matchN(1, [_#defs."/$defs/node_config/$defs/taint", [..._#defs."/$defs/node_config/$defs/taint"]])
		windows_node_config?: matchN(1, [_#defs."/$defs/node_config/$defs/windows_node_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/windows_node_config"]])
		workload_metadata_config?: matchN(1, [_#defs."/$defs/node_config/$defs/workload_metadata_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/workload_metadata_config"]])

		// Minimum CPU platform to be used by this instance. The instance
		// may be scheduled on the specified or newer CPU platform.
		min_cpu_platform?: string

		// Setting this field will assign instances of this pool to run on
		// the specified node group. This is useful for running workloads
		// on sole tenant nodes.
		node_group?: string

		// The set of Google API scopes to be made available on all of the
		// node VMs.
		oauth_scopes?: [...string]

		// Whether the nodes are created as preemptible VM instances.
		preemptible?: bool

		// The GCE resource labels (a map of key/value pairs) to be
		// applied to the node pool.
		resource_labels?: [string]: string

		// A map of resource manager tags. Resource manager tag keys and
		// values have the same definition as resource manager tags. Keys
		// must be in the format tagKeys/{tag_key_id}, and values are in
		// the format tagValues/456. The field is ignored (both PUT &
		// PATCH) when empty.
		resource_manager_tags?: [string]: string

		// The Google Cloud Platform Service Account to be used by the
		// node VMs.
		service_account?: string

		// Whether the nodes are created as spot VM instances.
		spot?: bool

		// The list of Storage Pools where boot disks are provisioned.
		storage_pools?: [...string]

		// The list of instance tags applied to all nodes.
		tags?: [...string]
	})

	#placement_policy: close({
		// If set, refers to the name of a custom resource policy supplied
		// by the user. The resource policy must be in the same project
		// and region as the node pool. If not found, InvalidArgument
		// error is returned.
		policy_name?: string

		// The TPU topology like "2x4" or "2x2x2".
		// https://cloud.google.com/kubernetes-engine/docs/concepts/plan-tpus#topology
		tpu_topology?: string

		// Type defines the type of placement policy
		type!: string
	})

	#queued_provisioning: close({
		// Whether nodes in this node pool are obtainable solely through
		// the ProvisioningRequest API
		enabled!: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#upgrade_settings: close({
		// The number of additional nodes that can be added to the node
		// pool during an upgrade. Increasing max_surge raises the number
		// of nodes that can be upgraded simultaneously. Can be set to 0
		// or greater.
		max_surge?: number
		blue_green_settings?: matchN(1, [_#defs."/$defs/upgrade_settings/$defs/blue_green_settings", list.MaxItems(1) & [..._#defs."/$defs/upgrade_settings/$defs/blue_green_settings"]])

		// The number of nodes that can be simultaneously unavailable
		// during an upgrade. Increasing max_unavailable raises the
		// number of nodes that can be upgraded in parallel. Can be set
		// to 0 or greater.
		max_unavailable?: number

		// Update strategy for the given nodepool.
		strategy?: string
	})

	_#defs: "/$defs/network_config/$defs/additional_node_network_configs": close({
		// Name of the VPC where the additional interface belongs.
		network?: string

		// Name of the subnetwork where the additional interface belongs.
		subnetwork?: string
	})

	_#defs: "/$defs/network_config/$defs/additional_pod_network_configs": close({
		// The maximum number of pods per node which use this pod network.
		max_pods_per_node?: number

		// The name of the secondary range on the subnet which provides IP
		// address for this pod range.
		secondary_pod_range?: string

		// Name of the subnetwork where the additional pod network
		// belongs.
		subnetwork?: string
	})

	_#defs: "/$defs/network_config/$defs/network_performance_config": close({
		// Specifies the total network bandwidth tier for the NodePool.
		// [Valid
		// values](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.Tier)
		// include: "TIER_1" and "TIER_UNSPECIFIED".
		total_egress_bandwidth_tier!: string
	})

	_#defs: "/$defs/network_config/$defs/pod_cidr_overprovision_config": close({
		disabled!: bool
	})

	_#defs: "/$defs/node_config/$defs/advanced_machine_features": close({
		// Whether the node should have nested virtualization enabled.
		enable_nested_virtualization?: bool

		// Level of Performance Monitoring Unit (PMU) requested. If unset,
		// no access to the PMU is assumed.
		performance_monitoring_unit?: string

		// The number of threads per physical core. To disable
		// simultaneous multithreading (SMT) set this to 1. If unset, the
		// maximum number of threads supported per core by the underlying
		// processor is assumed.
		threads_per_core!: number
	})

	_#defs: "/$defs/node_config/$defs/boot_disk": close({
		// Type of the disk attached to each node. Such as pd-standard,
		// pd-balanced or pd-ssd
		disk_type?: string

		// Configured IOPs provisioning. Only valid with disk type
		// hyperdisk-balanced.
		provisioned_iops?: number

		// Configured throughput provisioning. Only valid with disk type
		// hyperdisk-balanced.
		provisioned_throughput?: number

		// Size of the disk attached to each node, specified in GB. The
		// smallest allowed disk size is 10GB.
		size_gb?: number
	})

	_#defs: "/$defs/node_config/$defs/confidential_nodes": close({
		// Defines the type of technology used by the confidential node.
		confidential_instance_type?: string

		// Whether Confidential Nodes feature is enabled for all nodes in
		// this pool.
		enabled!: bool
	})

	_#defs: "/$defs/node_config/$defs/containerd_config": close({
		private_registry_access_config?: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config"]])
	})

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config": close({
		certificate_authority_domain_config?: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config", [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config"]])

		// Whether or not private registries are configured.
		enabled!: bool
	})

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config": close({
		gcp_secret_manager_certificate_config?: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config/$defs/gcp_secret_manager_certificate_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config/$defs/gcp_secret_manager_certificate_config"]])

		// List of fully-qualified-domain-names. IPv4s and port
		// specification are supported.
		fqdns!: [...string]
	})

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config/$defs/gcp_secret_manager_certificate_config": close({
		// URI for the secret that hosts a certificate. Must be in the
		// format
		// 'projects/PROJECT_NUM/secrets/SECRET_NAME/versions/VERSION_OR_LATEST'.
		secret_uri!: string
	})

	_#defs: "/$defs/node_config/$defs/ephemeral_storage_local_ssd_config": close({
		// Number of local SSDs to be utilized for GKE Data Cache. Uses
		// NVMe interfaces.
		data_cache_count?: number

		// Number of local SSDs to use to back ephemeral storage. Uses
		// NVMe interfaces. Each local SSD must be 375 or 3000 GB in
		// size, and all local SSDs must share the same size.
		local_ssd_count!: number
	})

	_#defs: "/$defs/node_config/$defs/fast_socket": close({
		// Whether or not NCCL Fast Socket is enabled
		enabled!: bool
	})

	_#defs: "/$defs/node_config/$defs/gcfs_config": close({
		// Whether or not GCFS is enabled
		enabled!: bool
	})

	_#defs: "/$defs/node_config/$defs/guest_accelerator": close({
		// The number of the accelerator cards exposed to an instance.
		count!: number

		// Size of partitions to create on the GPU. Valid values are
		// described in the NVIDIA mig user guide
		// (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning)
		gpu_partition_size?: string
		gpu_driver_installation_config?: matchN(1, [_#defs."/$defs/node_config/$defs/guest_accelerator/$defs/gpu_driver_installation_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/guest_accelerator/$defs/gpu_driver_installation_config"]])

		// The accelerator type resource name.
		type!: string
		gpu_sharing_config?: matchN(1, [_#defs."/$defs/node_config/$defs/guest_accelerator/$defs/gpu_sharing_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/guest_accelerator/$defs/gpu_sharing_config"]])
	})

	_#defs: "/$defs/node_config/$defs/guest_accelerator/$defs/gpu_driver_installation_config": close({
		// Mode for how the GPU driver is installed.
		gpu_driver_version!: string
	})

	_#defs: "/$defs/node_config/$defs/guest_accelerator/$defs/gpu_sharing_config": close({
		// The type of GPU sharing strategy to enable on the GPU node.
		// Possible values are described in the API package
		// (https://pkg.go.dev/google.golang.org/api/container/v1#GPUSharingConfig)
		gpu_sharing_strategy!: string

		// The maximum number of containers that can share a GPU.
		max_shared_clients_per_gpu!: number
	})

	_#defs: "/$defs/node_config/$defs/gvnic": close({
		// Whether or not gvnic is enabled
		enabled!: bool
	})

	_#defs: "/$defs/node_config/$defs/host_maintenance_policy": close({
		// .
		maintenance_interval!: string
	})

	_#defs: "/$defs/node_config/$defs/kubelet_config": close({
		// Defines a comma-separated allowlist of unsafe sysctls or sysctl
		// patterns which can be set on the Pods.
		allowed_unsafe_sysctls?: [...string]

		// Defines the maximum number of container log files that can be
		// present for a container.
		container_log_max_files?: number

		// Defines the maximum size of the container log file before it is
		// rotated.
		container_log_max_size?: string

		// Enable CPU CFS quota enforcement for containers that specify
		// CPU limits.
		cpu_cfs_quota?: bool

		// Set the CPU CFS quota period value 'cpu.cfs_period_us'.
		cpu_cfs_quota_period?: string

		// Control the CPU management policy on the node.
		cpu_manager_policy?: string

		// Defines the maximum allowed grace period (in seconds) to use
		// when terminating pods in response to a soft eviction threshold
		// being met.
		eviction_max_pod_grace_period_seconds?: number

		// Defines the percent of disk usage after which image garbage
		// collection is always run.
		image_gc_high_threshold_percent?: number

		// Defines the percent of disk usage before which image garbage
		// collection is never run. Lowest disk usage to garbage collect
		// to.
		image_gc_low_threshold_percent?: number

		// Defines the maximum age an image can be unused before it is
		// garbage collected.
		image_maximum_gc_age?: string
		eviction_minimum_reclaim?: matchN(1, [_#defs."/$defs/node_config/$defs/kubelet_config/$defs/eviction_minimum_reclaim", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/kubelet_config/$defs/eviction_minimum_reclaim"]])
		eviction_soft?: matchN(1, [_#defs."/$defs/node_config/$defs/kubelet_config/$defs/eviction_soft", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/kubelet_config/$defs/eviction_soft"]])
		eviction_soft_grace_period?: matchN(1, [_#defs."/$defs/node_config/$defs/kubelet_config/$defs/eviction_soft_grace_period", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/kubelet_config/$defs/eviction_soft_grace_period"]])

		// Defines the minimum age for an unused image before it is
		// garbage collected.
		image_minimum_gc_age?: string
		memory_manager?: matchN(1, [_#defs."/$defs/node_config/$defs/kubelet_config/$defs/memory_manager", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/kubelet_config/$defs/memory_manager"]])

		// Controls whether the kubelet read-only port is enabled. It is
		// strongly recommended to set this to `FALSE`. Possible values:
		// `TRUE`, `FALSE`.
		insecure_kubelet_readonly_port_enabled?: string
		topology_manager?: matchN(1, [_#defs."/$defs/node_config/$defs/kubelet_config/$defs/topology_manager", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/kubelet_config/$defs/topology_manager"]])

		// Set the maximum number of image pulls in parallel.
		max_parallel_image_pulls?: number

		// Controls the maximum number of processes allowed to run in a
		// pod.
		pod_pids_limit?: number

		// Defines whether to enable single process OOM killer.
		single_process_oom_kill?: bool
	})

	_#defs: "/$defs/node_config/$defs/kubelet_config/$defs/eviction_minimum_reclaim": close({
		// Defines percentage of minimum reclaim for imagefs.available.
		imagefs_available?: string

		// Defines percentage of minimum reclaim for imagefs.inodesFree.
		imagefs_inodes_free?: string

		// Defines percentage of minimum reclaim for memory.available.
		memory_available?: string

		// Defines percentage of minimum reclaim for nodefs.available.
		nodefs_available?: string

		// Defines percentage of minimum reclaim for nodefs.inodesFree.
		nodefs_inodes_free?: string

		// Defines percentage of minimum reclaim for pid.available.
		pid_available?: string
	})

	_#defs: "/$defs/node_config/$defs/kubelet_config/$defs/eviction_soft": close({
		// Defines percentage of soft eviction threshold for
		// imagefs.available.
		imagefs_available?: string

		// Defines percentage of soft eviction threshold for
		// imagefs.inodesFree.
		imagefs_inodes_free?: string

		// Defines quantity of soft eviction threshold for
		// memory.available.
		memory_available?: string

		// Defines percentage of soft eviction threshold for
		// nodefs.available.
		nodefs_available?: string

		// Defines percentage of soft eviction threshold for
		// nodefs.inodesFree.
		nodefs_inodes_free?: string

		// Defines percentage of soft eviction threshold for
		// pid.available.
		pid_available?: string
	})

	_#defs: "/$defs/node_config/$defs/kubelet_config/$defs/eviction_soft_grace_period": close({
		// Defines grace period for the imagefs.available soft eviction
		// threshold
		imagefs_available?: string

		// Defines grace period for the imagefs.inodesFree soft eviction
		// threshold.
		imagefs_inodes_free?: string

		// Defines grace period for the memory.available soft eviction
		// threshold.
		memory_available?: string

		// Defines grace period for the nodefs.available soft eviction
		// threshold.
		nodefs_available?: string

		// Defines grace period for the nodefs.inodesFree soft eviction
		// threshold.
		nodefs_inodes_free?: string

		// Defines grace period for the pid.available soft eviction
		// threshold.
		pid_available?: string
	})

	_#defs: "/$defs/node_config/$defs/kubelet_config/$defs/memory_manager": close({
		// The Memory Manager policy to use. This policy guides how memory
		// and hugepages are allocated and managed for pods on the node,
		// influencing NUMA affinity.
		policy?: string
	})

	_#defs: "/$defs/node_config/$defs/kubelet_config/$defs/topology_manager": close({
		// The Topology Manager policy to use. This policy dictates how
		// resource alignment is handled on the node.
		policy?: string

		// The Topology Manager scope, defining the granularity at which
		// policy decisions are applied. Valid values are "container"
		// (resources are aligned per container within a pod) or "pod"
		// (resources are aligned for the entire pod).
		scope?: string
	})

	_#defs: "/$defs/node_config/$defs/linux_node_config": close({
		// cgroupMode specifies the cgroup mode to be used on the node.
		cgroup_mode?: string

		// The Linux kernel parameters to be applied to the nodes and all
		// pods running on the nodes.
		sysctls?: [string]: string

		// The Linux kernel transparent hugepage defrag setting.
		transparent_hugepage_defrag?: string
		hugepages_config?: matchN(1, [_#defs."/$defs/node_config/$defs/linux_node_config/$defs/hugepages_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/linux_node_config/$defs/hugepages_config"]])

		// The Linux kernel transparent hugepage setting.
		transparent_hugepage_enabled?: string
	})

	_#defs: "/$defs/node_config/$defs/linux_node_config/$defs/hugepages_config": close({
		// Amount of 1G hugepages.
		hugepage_size_1g?: number

		// Amount of 2M hugepages.
		hugepage_size_2m?: number
	})

	_#defs: "/$defs/node_config/$defs/local_nvme_ssd_block_config": close({
		// Number of raw-block local NVMe SSD disks to be attached to the
		// node. Each local SSD is 375 GB in size.
		local_ssd_count!: number
	})

	_#defs: "/$defs/node_config/$defs/reservation_affinity": close({
		// Corresponds to the type of reservation consumption.
		consume_reservation_type!: string

		// The label key of a reservation resource.
		key?: string

		// The label values of the reservation resource.
		values?: [...string]
	})

	_#defs: "/$defs/node_config/$defs/secondary_boot_disks": close({
		// Disk image to create the secondary boot disk from
		disk_image!: string

		// Mode for how the secondary boot disk is used.
		mode?: string
	})

	_#defs: "/$defs/node_config/$defs/shielded_instance_config": close({
		// Defines whether the instance has integrity monitoring enabled.
		enable_integrity_monitoring?: bool

		// Defines whether the instance has Secure Boot enabled.
		enable_secure_boot?: bool
	})

	_#defs: "/$defs/node_config/$defs/sole_tenant_config": close({
		node_affinity?: matchN(1, [_#defs."/$defs/node_config/$defs/sole_tenant_config/$defs/node_affinity", [_, ...] & [..._#defs."/$defs/node_config/$defs/sole_tenant_config/$defs/node_affinity"]])

		// Specifies the minimum number of vCPUs that each sole tenant
		// node must have to use CPU overcommit. If not specified, the
		// CPU overcommit feature is disabled.
		min_node_cpus?: number
	})

	_#defs: "/$defs/node_config/$defs/sole_tenant_config/$defs/node_affinity": close({
		// .
		key!: string

		// .
		operator!: string

		// .
		values!: [...string]
	})

	_#defs: "/$defs/node_config/$defs/taint": close({
		// Effect for taint.
		effect!: string

		// Key for taint.
		key!: string

		// Value for taint.
		value!: string
	})

	_#defs: "/$defs/node_config/$defs/windows_node_config": close({
		// The OS Version of the windows nodepool.Values are
		// OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and
		// OS_VERSION_LTSC2022
		osversion?: string
	})

	_#defs: "/$defs/node_config/$defs/workload_metadata_config": close({
		// Mode is the configuration for how to expose metadata to
		// workloads running on the node.
		mode!: string
	})

	_#defs: "/$defs/upgrade_settings/$defs/blue_green_settings": close({
		standard_rollout_policy?: matchN(1, [_#defs."/$defs/upgrade_settings/$defs/blue_green_settings/$defs/standard_rollout_policy", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/upgrade_settings/$defs/blue_green_settings/$defs/standard_rollout_policy"]])

		// Time needed after draining entire blue pool. After this period,
		// blue pool will be cleaned up.
		node_pool_soak_duration?: string
	})

	_#defs: "/$defs/upgrade_settings/$defs/blue_green_settings/$defs/standard_rollout_policy": close({
		// Number of blue nodes to drain in a batch.
		batch_node_count?: number

		// Percentage of the blue pool nodes to drain in a batch.
		batch_percentage?: number

		// Soak time after each batch gets drained.
		batch_soak_duration?: string
	})
}
