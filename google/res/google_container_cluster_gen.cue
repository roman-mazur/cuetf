package res

import "list"

#google_container_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_container_cluster")
	close({
		// Enable NET_ADMIN for this cluster.
		allow_net_admin?: bool
		addons_config?: matchN(1, [#addons_config, list.MaxItems(1) & [...#addons_config]])
		anonymous_authentication_config?: matchN(1, [#anonymous_authentication_config, list.MaxItems(1) & [...#anonymous_authentication_config]])

		// The IP address range of the Kubernetes pods in this cluster in
		// CIDR notation (e.g. 10.96.0.0/14). Leave blank to have one
		// automatically chosen or specify a /14 block in 10.0.0.0/8.
		// This field will only work for routes-based clusters, where
		// ip_allocation_policy is not defined.
		cluster_ipv4_cidr?: string

		// The desired datapath provider for this cluster. By default,
		// uses the IPTables-based kube-proxy implementation.
		datapath_provider?: string

		// The default maximum number of pods per node in this cluster.
		// This doesn't work on "routes-based" clusters, clusters that
		// don't have IP Aliasing enabled.
		default_max_pods_per_node?: number

		// When the field is set to true or unset in Terraform state, a
		// terraform apply or terraform destroy that would delete the
		// cluster will fail. When the field is set to false, deleting
		// the cluster is allowed.
		deletion_protection?: bool

		// Description of the cluster.
		description?: string

		// Disable L4 load balancer VPC firewalls to enable firewall
		// policies.
		disable_l4_lb_firewall_reconciliation?: bool
		authenticator_groups_config?: matchN(1, [#authenticator_groups_config, list.MaxItems(1) & [...#authenticator_groups_config]])

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Enable Autopilot for this cluster.
		enable_autopilot?: bool

		// Whether Cilium cluster-wide network policy is enabled on this
		// cluster.
		enable_cilium_clusterwide_network_policy?: bool

		// Whether FQDN Network Policy is enabled on this cluster.
		enable_fqdn_network_policy?: bool

		// Whether Intra-node visibility is enabled for this cluster. This
		// makes same node pod to pod traffic visible for VPC network.
		enable_intranode_visibility?: bool
		binary_authorization?: matchN(1, [#binary_authorization, list.MaxItems(1) & [...#binary_authorization]])

		// Whether to enable Kubernetes Alpha features for this cluster.
		// Note that when this option is enabled, the cluster cannot be
		// upgraded and will be automatically deleted after 30 days.
		enable_kubernetes_alpha?: bool

		// Whether L4ILB Subsetting is enabled for this cluster.
		enable_l4_ilb_subsetting?: bool

		// Whether the ABAC authorizer is enabled for this cluster. When
		// enabled, identities in the system, including service accounts,
		// nodes, and controllers, will have statically granted
		// permissions beyond those provided by the RBAC configuration or
		// IAM. Defaults to false.
		enable_legacy_abac?: bool

		// Whether multi-networking is enabled for this cluster.
		enable_multi_networking?: bool

		// Enable Shielded Nodes features on all nodes in this cluster.
		// Defaults to true.
		enable_shielded_nodes?: bool

		// Whether to enable Cloud TPU resources in this cluster.
		enable_tpu?: bool

		// The IP address of this cluster's Kubernetes master.
		endpoint?: string

		// Defines the config of in-transit encryption
		in_transit_encryption_config?: string
		id?:                           string

		// The number of nodes to create in this cluster's default node
		// pool. In regional or multi-zonal clusters, this is the number
		// of nodes per zone. Must be set if node_pool is not set. If
		// you're using google_container_node_pool objects with no
		// default node pool, you'll need to set this to a value of at
		// least 1, alongside setting remove_default_node_pool to true.
		initial_node_count?: number
		cluster_autoscaling?: matchN(1, [#cluster_autoscaling, list.MaxItems(1) & [...#cluster_autoscaling]])
		confidential_nodes?: matchN(1, [#confidential_nodes, list.MaxItems(1) & [...#confidential_nodes]])
		control_plane_endpoints_config?: matchN(1, [#control_plane_endpoints_config, list.MaxItems(1) & [...#control_plane_endpoints_config]])
		cost_management_config?: matchN(1, [#cost_management_config, list.MaxItems(1) & [...#cost_management_config]])
		database_encryption?: matchN(1, [#database_encryption, list.MaxItems(1) & [...#database_encryption]])
		default_snat_status?: matchN(1, [#default_snat_status, list.MaxItems(1) & [...#default_snat_status]])
		dns_config?: matchN(1, [#dns_config, list.MaxItems(1) & [...#dns_config]])
		enable_k8s_beta_apis?: matchN(1, [#enable_k8s_beta_apis, list.MaxItems(1) & [...#enable_k8s_beta_apis]])
		enterprise_config?: matchN(1, [#enterprise_config, list.MaxItems(1) & [...#enterprise_config]])
		fleet?: matchN(1, [#fleet, list.MaxItems(1) & [...#fleet]])
		gateway_api_config?: matchN(1, [#gateway_api_config, list.MaxItems(1) & [...#gateway_api_config]])
		gke_auto_upgrade_config?: matchN(1, [#gke_auto_upgrade_config, list.MaxItems(1) & [...#gke_auto_upgrade_config]])
		identity_service_config?: matchN(1, [#identity_service_config, list.MaxItems(1) & [...#identity_service_config]])
		ip_allocation_policy?: matchN(1, [#ip_allocation_policy, list.MaxItems(1) & [...#ip_allocation_policy]])
		logging_config?: matchN(1, [#logging_config, list.MaxItems(1) & [...#logging_config]])
		maintenance_policy?: matchN(1, [#maintenance_policy, list.MaxItems(1) & [...#maintenance_policy]])
		master_auth?: matchN(1, [#master_auth, list.MaxItems(1) & [...#master_auth]])
		master_authorized_networks_config?: matchN(1, [#master_authorized_networks_config, list.MaxItems(1) & [...#master_authorized_networks_config]])
		mesh_certificates?: matchN(1, [#mesh_certificates, list.MaxItems(1) & [...#mesh_certificates]])
		monitoring_config?: matchN(1, [#monitoring_config, list.MaxItems(1) & [...#monitoring_config]])
		network_performance_config?: matchN(1, [#network_performance_config, list.MaxItems(1) & [...#network_performance_config]])
		network_policy?: matchN(1, [#network_policy, list.MaxItems(1) & [...#network_policy]])
		node_config?: matchN(1, [#node_config, list.MaxItems(1) & [...#node_config]])
		node_pool?: matchN(1, [#node_pool, [...#node_pool]])
		node_pool_auto_config?: matchN(1, [#node_pool_auto_config, list.MaxItems(1) & [...#node_pool_auto_config]])
		node_pool_defaults?: matchN(1, [#node_pool_defaults, list.MaxItems(1) & [...#node_pool_defaults]])
		notification_config?: matchN(1, [#notification_config, list.MaxItems(1) & [...#notification_config]])
		pod_autoscaling?: matchN(1, [#pod_autoscaling, list.MaxItems(1) & [...#pod_autoscaling]])
		private_cluster_config?: matchN(1, [#private_cluster_config, list.MaxItems(1) & [...#private_cluster_config]])
		rbac_binding_config?: matchN(1, [#rbac_binding_config, list.MaxItems(1) & [...#rbac_binding_config]])
		release_channel?: matchN(1, [#release_channel, list.MaxItems(1) & [...#release_channel]])
		resource_usage_export_config?: matchN(1, [#resource_usage_export_config, list.MaxItems(1) & [...#resource_usage_export_config]])
		secret_manager_config?: matchN(1, [#secret_manager_config, list.MaxItems(1) & [...#secret_manager_config]])
		security_posture_config?: matchN(1, [#security_posture_config, list.MaxItems(1) & [...#security_posture_config]])
		service_external_ips_config?: matchN(1, [#service_external_ips_config, list.MaxItems(1) & [...#service_external_ips_config]])
		timeouts?: #timeouts
		user_managed_keys_config?: matchN(1, [#user_managed_keys_config, list.MaxItems(1) & [...#user_managed_keys_config]])
		vertical_pod_autoscaling?: matchN(1, [#vertical_pod_autoscaling, list.MaxItems(1) & [...#vertical_pod_autoscaling]])
		workload_identity_config?: matchN(1, [#workload_identity_config, list.MaxItems(1) & [...#workload_identity_config]])

		// The fingerprint of the set of labels for this cluster.
		label_fingerprint?: string

		// The location (region or zone) in which the cluster master will
		// be created, as well as the default node location. If you
		// specify a zone (such as us-central1-a), the cluster will be a
		// zonal cluster with a single cluster master. If you specify a
		// region (such as us-west1), the cluster will be a regional
		// cluster with multiple masters spread across zones in the
		// region, and with default node locations in those zones as
		// well.
		location?: string

		// The logging service that the cluster should write logs to.
		// Available options include logging.googleapis.com(Legacy
		// Stackdriver), logging.googleapis.com/kubernetes(Stackdriver
		// Kubernetes Engine Logging), and none. Defaults to
		// logging.googleapis.com/kubernetes.
		logging_service?: string

		// The current version of the master in the cluster. This may be
		// different than the min_master_version set in the config if the
		// master has been updated by GKE.
		master_version?: string

		// The minimum version of the master. GKE will auto-update the
		// master to new versions, so this does not guarantee the current
		// master version--use the read-only master_version field to
		// obtain that. If unset, the cluster's version will be set by
		// GKE to the version of the most recent official release (which
		// is not necessarily the latest version).
		min_master_version?: string

		// The monitoring service that the cluster should write metrics
		// to. Automatically send metrics from pods in the cluster to the
		// Google Cloud Monitoring API. VM metrics will be collected by
		// Google Compute Engine regardless of this setting Available
		// options include monitoring.googleapis.com(Legacy Stackdriver),
		// monitoring.googleapis.com/kubernetes(Stackdriver Kubernetes
		// Engine Monitoring), and none. Defaults to
		// monitoring.googleapis.com/kubernetes.
		monitoring_service?: string

		// The name of the cluster, unique within the project and
		// location.
		name!: string

		// The name or self_link of the Google Compute Engine network to
		// which the cluster is connected. For Shared VPC, set this to
		// the self link of the shared network.
		network?: string

		// Determines whether alias IPs or routes will be used for pod IPs
		// in the cluster. Defaults to VPC_NATIVE for new clusters.
		networking_mode?: string

		// The list of zones in which the cluster's nodes are located.
		// Nodes must be in the region of their regional cluster or in
		// the same region as their cluster's zone for zonal clusters. If
		// this is specified for a zonal cluster, omit the cluster's
		// zone.
		node_locations?: [...string]

		// The Kubernetes version on the nodes. Must either be unset or
		// set to the same value as min_master_version on create.
		// Defaults to the default version set by GKE which is not
		// necessarily the latest version. This only affects nodes in the
		// default node pool. While a fuzzy version can be specified,
		// it's recommended that you specify explicit versions as
		// Terraform will see spurious diffs when fuzzy versions are
		// used. See the google_container_engine_versions data source's
		// version_prefix field to approximate fuzzy versions in a
		// Terraform-compatible way. To update nodes in other node pools,
		// use the version attribute on the node pool.
		node_version?: string
		operation?:    string

		// The desired state of IPv6 connectivity to Google Services. By
		// default, no private IPv6 access to or from Google Services
		// (all access will be via IPv4).
		private_ipv6_google_access?: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// If true, deletes the default node pool upon cluster creation.
		// If you're using google_container_node_pool resources with no
		// default node pool, this should be set to true, alongside
		// setting initial_node_count to at least 1.
		remove_default_node_pool?: bool

		// The GCE resource labels (a map of key/value pairs) to be
		// applied to the cluster.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		resource_labels?: [string]: string

		// Server-defined URL for the resource.
		self_link?: string

		// The IP address range of the Kubernetes services in this
		// cluster, in CIDR notation (e.g. 1.2.3.4/29). Service addresses
		// are typically put in the last /16 from the container CIDR.
		services_ipv4_cidr?: string

		// The name or self_link of the Google Compute Engine subnetwork
		// in which the cluster's instances are launched.
		subnetwork?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The IP address range of the Cloud TPUs in this cluster, in CIDR
		// notation (e.g. 1.2.3.4/29).
		tpu_ipv4_cidr_block?: string
	})

	#addons_config: close({
		cloudrun_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/cloudrun_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/cloudrun_config"]])
		config_connector_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/config_connector_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/config_connector_config"]])
		dns_cache_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/dns_cache_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/dns_cache_config"]])
		gce_persistent_disk_csi_driver_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/gce_persistent_disk_csi_driver_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/gce_persistent_disk_csi_driver_config"]])
		gcp_filestore_csi_driver_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/gcp_filestore_csi_driver_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/gcp_filestore_csi_driver_config"]])
		gcs_fuse_csi_driver_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/gcs_fuse_csi_driver_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/gcs_fuse_csi_driver_config"]])
		gke_backup_agent_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/gke_backup_agent_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/gke_backup_agent_config"]])
		horizontal_pod_autoscaling?: matchN(1, [_#defs."/$defs/addons_config/$defs/horizontal_pod_autoscaling", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/horizontal_pod_autoscaling"]])
		http_load_balancing?: matchN(1, [_#defs."/$defs/addons_config/$defs/http_load_balancing", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/http_load_balancing"]])
		lustre_csi_driver_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/lustre_csi_driver_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/lustre_csi_driver_config"]])
		network_policy_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/network_policy_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/network_policy_config"]])
		parallelstore_csi_driver_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/parallelstore_csi_driver_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/parallelstore_csi_driver_config"]])
		ray_operator_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/ray_operator_config", list.MaxItems(3) & [..._#defs."/$defs/addons_config/$defs/ray_operator_config"]])
		stateful_ha_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/stateful_ha_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/stateful_ha_config"]])
	})

	#anonymous_authentication_config: close({
		// Setting this to LIMITED will restrict authentication of
		// anonymous users to health check endpoints only.
		// Accepted values are:
		// * ENABLED: Authentication of anonymous users is enabled for all
		// endpoints.
		// * LIMITED: Anonymous access is only allowed for health check
		// endpoints.
		mode!: string
	})

	#authenticator_groups_config: close({
		// The name of the RBAC security group for use with Google
		// security groups in Kubernetes RBAC. Group name must be in
		// format gke-security-groups@yourdomain.com.
		security_group!: string
	})

	#binary_authorization: close({
		// Mode of operation for Binary Authorization policy evaluation.
		evaluation_mode?: string
	})

	#cluster_autoscaling: close({
		// The list of Google Compute Engine zones in which the NodePool's
		// nodes can be created by NAP.
		auto_provisioning_locations?: [...string]

		// Configuration options for the Autoscaling profile feature,
		// which lets you choose whether the cluster autoscaler should
		// optimize for resource utilization or resource availability
		// when deciding to remove nodes from a cluster. Can be BALANCED
		// or OPTIMIZE_UTILIZATION. Defaults to BALANCED.
		autoscaling_profile?: string

		// Specifies whether default compute class behaviour is enabled.
		// If enabled, cluster autoscaler will use Compute Class with
		// name default for all the workloads, if not overriden.
		default_compute_class_enabled?: bool

		// Whether node auto-provisioning is enabled. Resource limits for
		// cpu and memory must be defined to enable node
		// auto-provisioning.
		enabled?: bool
		auto_provisioning_defaults?: matchN(1, [_#defs."/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults", list.MaxItems(1) & [..._#defs."/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults"]])
		resource_limits?: matchN(1, [_#defs."/$defs/cluster_autoscaling/$defs/resource_limits", [..._#defs."/$defs/cluster_autoscaling/$defs/resource_limits"]])
	})

	#confidential_nodes: close({
		// Defines the type of technology used by the confidential node.
		confidential_instance_type?: string

		// Whether Confidential Nodes feature is enabled for all nodes in
		// this cluster.
		enabled!: bool
	})

	#control_plane_endpoints_config: close({
		dns_endpoint_config?: matchN(1, [_#defs."/$defs/control_plane_endpoints_config/$defs/dns_endpoint_config", list.MaxItems(1) & [..._#defs."/$defs/control_plane_endpoints_config/$defs/dns_endpoint_config"]])
		ip_endpoints_config?: matchN(1, [_#defs."/$defs/control_plane_endpoints_config/$defs/ip_endpoints_config", list.MaxItems(1) & [..._#defs."/$defs/control_plane_endpoints_config/$defs/ip_endpoints_config"]])
	})

	#cost_management_config: close({
		// Whether to enable GKE cost allocation. When you enable GKE cost
		// allocation, the cluster name and namespace of your GKE
		// workloads appear in the labels field of the billing export to
		// BigQuery. Defaults to false.
		enabled!: bool
	})

	#database_encryption: close({
		// The key to use to encrypt/decrypt secrets.
		key_name?: string

		// ENCRYPTED or DECRYPTED.
		state!: string
	})

	#default_snat_status: close({
		// When disabled is set to false, default IP masquerade rules will
		// be applied to the nodes to prevent sNAT on cluster internal
		// traffic.
		disabled!: bool
	})

	#dns_config: close({
		// Enable additive VPC scope DNS in a GKE cluster.
		additive_vpc_scope_dns_domain?: string

		// Which in-cluster DNS provider should be used.
		cluster_dns?: string

		// The suffix used for all cluster service records.
		cluster_dns_domain?: string

		// The scope of access to cluster DNS records.
		cluster_dns_scope?: string
	})

	#enable_k8s_beta_apis: close({
		// Enabled Kubernetes Beta APIs.
		enabled_apis!: [...string]
	})

	#enterprise_config: close({})

	#fleet: close({
		// Full resource name of the registered fleet membership of the
		// cluster.
		membership?: string

		// Short name of the fleet membership, for example "member-1".
		membership_id?: string

		// Location of the fleet membership, for example "us-central1".
		membership_location?: string

		// The type of the cluster's fleet membership.
		membership_type?: string

		// Whether the cluster has been registered via the fleet API.
		pre_registered?: bool

		// The Fleet host project of the cluster.
		project?: string
	})

	#gateway_api_config: close({
		// The Gateway API release channel to use for Gateway API.
		channel!: string
	})

	#gke_auto_upgrade_config: close({
		// The selected auto-upgrade patch type. Accepted values are:
		// * ACCELERATED: Upgrades to the latest available patch version
		// in a given minor and release channel.
		patch_mode!: string
	})

	#identity_service_config: close({
		// Whether to enable the Identity Service component.
		enabled?: bool
	})

	#ip_allocation_policy: close({
		// The IP address range for the cluster pod IPs. Set to blank to
		// have a range chosen with the default size. Set to /netmask
		// (e.g. /14) to have a range chosen with a specific netmask. Set
		// to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918
		// private networks (e.g. 10.0.0.0/8, 172.16.0.0/12,
		// 192.168.0.0/16) to pick a specific range to use.
		cluster_ipv4_cidr_block?: string

		// The name of the existing secondary range in the cluster's
		// subnetwork to use for pod IP addresses. Alternatively,
		// cluster_ipv4_cidr_block can be used to automatically create a
		// GKE-managed one.
		cluster_secondary_range_name?: string

		// The IP address range of the services IPs in this cluster. Set
		// to blank to have a range chosen with the default size. Set to
		// /netmask (e.g. /14) to have a range chosen with a specific
		// netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the
		// RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12,
		// 192.168.0.0/16) to pick a specific range to use.
		services_ipv4_cidr_block?: string

		// The name of the existing secondary range in the cluster's
		// subnetwork to use for service ClusterIPs. Alternatively,
		// services_ipv4_cidr_block can be used to automatically create a
		// GKE-managed one.
		services_secondary_range_name?: string
		additional_ip_ranges_config?: matchN(1, [_#defs."/$defs/ip_allocation_policy/$defs/additional_ip_ranges_config", [..._#defs."/$defs/ip_allocation_policy/$defs/additional_ip_ranges_config"]])
		additional_pod_ranges_config?: matchN(1, [_#defs."/$defs/ip_allocation_policy/$defs/additional_pod_ranges_config", list.MaxItems(1) & [..._#defs."/$defs/ip_allocation_policy/$defs/additional_pod_ranges_config"]])
		auto_ipam_config?: matchN(1, [_#defs."/$defs/ip_allocation_policy/$defs/auto_ipam_config", list.MaxItems(1) & [..._#defs."/$defs/ip_allocation_policy/$defs/auto_ipam_config"]])
		network_tier_config?: matchN(1, [_#defs."/$defs/ip_allocation_policy/$defs/network_tier_config", list.MaxItems(1) & [..._#defs."/$defs/ip_allocation_policy/$defs/network_tier_config"]])
		pod_cidr_overprovision_config?: matchN(1, [_#defs."/$defs/ip_allocation_policy/$defs/pod_cidr_overprovision_config", list.MaxItems(1) & [..._#defs."/$defs/ip_allocation_policy/$defs/pod_cidr_overprovision_config"]])

		// The IP Stack type of the cluster. Choose between IPV4 and
		// IPV4_IPV6. Default type is IPV4 Only if not set
		stack_type?: string
	})

	#logging_config: close({
		// GKE components exposing logs. Valid values include
		// SYSTEM_COMPONENTS, APISERVER, CONTROLLER_MANAGER,
		// KCP_CONNECTION, KCP_SSHD, KCP_HPA, SCHEDULER, and WORKLOADS.
		enable_components!: [...string]
	})

	#maintenance_policy: close({
		daily_maintenance_window?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/daily_maintenance_window", list.MaxItems(1) & [..._#defs."/$defs/maintenance_policy/$defs/daily_maintenance_window"]])
		maintenance_exclusion?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion", list.MaxItems(20) & [..._#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion"]])
		recurring_window?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/recurring_window", list.MaxItems(1) & [..._#defs."/$defs/maintenance_policy/$defs/recurring_window"]])
	})

	#master_auth: close({
		// Base64 encoded public certificate used by clients to
		// authenticate to the cluster endpoint.
		client_certificate?: string
		client_certificate_config!: matchN(1, [_#defs."/$defs/master_auth/$defs/client_certificate_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/master_auth/$defs/client_certificate_config"]])

		// Base64 encoded private key used by clients to authenticate to
		// the cluster endpoint.
		client_key?: string

		// Base64 encoded public certificate that is the root of trust for
		// the cluster.
		cluster_ca_certificate?: string
	})

	#master_authorized_networks_config: close({
		cidr_blocks?: matchN(1, [_#defs."/$defs/master_authorized_networks_config/$defs/cidr_blocks", [..._#defs."/$defs/master_authorized_networks_config/$defs/cidr_blocks"]])

		// Whether Kubernetes master is accessible via Google Compute
		// Engine Public IPs.
		gcp_public_cidrs_access_enabled?: bool

		// Whether authorized networks is enforced on the private endpoint
		// or not. Defaults to false.
		private_endpoint_enforcement_enabled?: bool
	})

	#mesh_certificates: close({
		// When enabled the GKE Workload Identity Certificates controller
		// and node agent will be deployed in the cluster.
		enable_certificates!: bool
	})

	#monitoring_config: close({
		advanced_datapath_observability_config?: matchN(1, [_#defs."/$defs/monitoring_config/$defs/advanced_datapath_observability_config", list.MaxItems(1) & [..._#defs."/$defs/monitoring_config/$defs/advanced_datapath_observability_config"]])
		managed_prometheus?: matchN(1, [_#defs."/$defs/monitoring_config/$defs/managed_prometheus", list.MaxItems(1) & [..._#defs."/$defs/monitoring_config/$defs/managed_prometheus"]])

		// GKE components exposing metrics. Valid values include
		// SYSTEM_COMPONENTS, APISERVER, SCHEDULER, CONTROLLER_MANAGER,
		// STORAGE, HPA, POD, DAEMONSET, DEPLOYMENT, STATEFULSET,
		// KUBELET, CADVISOR, DCGM and JOBSET.
		enable_components?: [...string]
	})

	#network_performance_config: close({
		// Specifies the total network bandwidth tier for NodePools in the
		// cluster.
		total_egress_bandwidth_tier!: string
	})

	#network_policy: close({
		// Whether network policy is enabled on the cluster.
		enabled!: bool

		// The selected network policy provider.
		provider?: string
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

	#node_pool: close({
		// The initial number of nodes for the pool. In regional or
		// multi-zonal clusters, this is the number of nodes per zone.
		// Changing this will force recreation of the resource.
		initial_node_count?: number

		// The resource URLs of the managed instance groups associated
		// with this node pool.
		instance_group_urls?: [...string]

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

		// Creates a unique name for the node pool beginning with the
		// specified prefix. Conflicts with name.
		name_prefix?: string
		autoscaling?: matchN(1, [_#defs."/$defs/node_pool/$defs/autoscaling", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/autoscaling"]])
		management?: matchN(1, [_#defs."/$defs/node_pool/$defs/management", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/management"]])
		network_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/network_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/network_config"]])
		node_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config"]])
		placement_policy?: matchN(1, [_#defs."/$defs/node_pool/$defs/placement_policy", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/placement_policy"]])
		queued_provisioning?: matchN(1, [_#defs."/$defs/node_pool/$defs/queued_provisioning", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/queued_provisioning"]])
		upgrade_settings?: matchN(1, [_#defs."/$defs/node_pool/$defs/upgrade_settings", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/upgrade_settings"]])

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

	#node_pool_auto_config: close({
		linux_node_config?: matchN(1, [_#defs."/$defs/node_pool_auto_config/$defs/linux_node_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool_auto_config/$defs/linux_node_config"]])
		network_tags?: matchN(1, [_#defs."/$defs/node_pool_auto_config/$defs/network_tags", list.MaxItems(1) & [..._#defs."/$defs/node_pool_auto_config/$defs/network_tags"]])
		node_kubelet_config?: matchN(1, [_#defs."/$defs/node_pool_auto_config/$defs/node_kubelet_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool_auto_config/$defs/node_kubelet_config"]])

		// A map of resource manager tags. Resource manager tag keys and
		// values have the same definition as resource manager tags. Keys
		// must be in the format tagKeys/{tag_key_id}, and values are in
		// the format tagValues/456. The field is ignored (both PUT &
		// PATCH) when empty.
		resource_manager_tags?: [string]: string
	})

	#node_pool_defaults: close({
		node_config_defaults?: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults", list.MaxItems(1) & [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults"]])
	})

	#notification_config: close({
		pubsub!: matchN(1, [_#defs."/$defs/notification_config/$defs/pubsub", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/notification_config/$defs/pubsub"]])
	})

	#pod_autoscaling: close({
		// HPA Profile is used to configure the Horizontal Pod Autoscaler
		// (HPA) profile for the cluster.
		// Available options include:
		// - NONE: Customers explicitly opt-out of HPA profiles.
		// - PERFORMANCE: PERFORMANCE is used when customers opt-in to the
		// performance HPA profile. In this profile we support a higher
		// number of HPAs per cluster and faster metrics collection for
		// workload autoscaling.
		hpa_profile!: string
	})

	#private_cluster_config: close({
		// When true, the cluster's private endpoint is used as the
		// cluster endpoint and access through the public endpoint is
		// disabled. When false, either endpoint can be used.
		enable_private_endpoint?: bool

		// Enables the private cluster feature, creating a private
		// endpoint on the cluster. In a private cluster, nodes only have
		// RFC 1918 private addresses and communicate with the master's
		// private endpoint via private networking.
		enable_private_nodes?: bool

		// The IP range in CIDR notation to use for the hosted master
		// network. This range will be used for assigning private IP
		// addresses to the cluster master(s) and the ILB VIP. This range
		// must not overlap with any other ranges in use within the
		// cluster's network, and it must be a /28 subnet. See Private
		// Cluster Limitations for more details. This field only applies
		// to private clusters, when enable_private_nodes is true.
		master_ipv4_cidr_block?: string

		// The name of the peering between this cluster and the Google
		// owned VPC.
		peering_name?: string

		// The internal IP address of this cluster's master endpoint.
		private_endpoint?: string

		// Subnetwork in cluster's network where master's endpoint will be
		// provisioned.
		private_endpoint_subnetwork?: string
		master_global_access_config?: matchN(1, [_#defs."/$defs/private_cluster_config/$defs/master_global_access_config", list.MaxItems(1) & [..._#defs."/$defs/private_cluster_config/$defs/master_global_access_config"]])

		// The external IP address of this cluster's master endpoint.
		public_endpoint?: string
	})

	#rbac_binding_config: close({
		// Setting this to true will allow any ClusterRoleBinding and
		// RoleBinding with subjects system:authenticated.
		enable_insecure_binding_system_authenticated?: bool

		// Setting this to true will allow any ClusterRoleBinding and
		// RoleBinding with subjects system:anonymous or
		// system:unauthenticated.
		enable_insecure_binding_system_unauthenticated?: bool
	})

	#release_channel: close({
		// The selected release channel. Accepted values are:
		// * UNSPECIFIED: Not set.
		// * RAPID: Weekly upgrade cadence; Early testers and developers
		// who requires new features.
		// * REGULAR: Multiple per month upgrade cadence; Production users
		// who need features not yet offered in the Stable channel.
		// * STABLE: Every few months upgrade cadence; Production users
		// who need stability above all else, and for whom frequent
		// upgrades are too risky.
		// * EXTENDED: GKE provides extended support for Kubernetes minor
		// versions through the Extended channel. With this channel, you
		// can stay on a minor version for up to 24 months.
		channel!: string
	})

	#resource_usage_export_config: close({
		bigquery_destination!: matchN(1, [_#defs."/$defs/resource_usage_export_config/$defs/bigquery_destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/resource_usage_export_config/$defs/bigquery_destination"]])

		// Whether to enable network egress metering for this cluster. If
		// enabled, a daemonset will be created in the cluster to meter
		// network egress traffic.
		enable_network_egress_metering?: bool

		// Whether to enable resource consumption metering on this
		// cluster. When enabled, a table will be created in the resource
		// export BigQuery dataset to store resource consumption data.
		// The resulting table can be joined with the resource usage
		// table or with BigQuery billing export. Defaults to true.
		enable_resource_consumption_metering?: bool
	})

	#secret_manager_config: close({
		rotation_config?: matchN(1, [_#defs."/$defs/secret_manager_config/$defs/rotation_config", list.MaxItems(1) & [..._#defs."/$defs/secret_manager_config/$defs/rotation_config"]])

		// Enable the Secret manager csi component.
		enabled!: bool
	})

	#security_posture_config: close({
		// Sets the mode of the Kubernetes security posture API's
		// off-cluster features. Available options include DISABLED,
		// BASIC, and ENTERPRISE.
		mode?: string

		// Sets the mode of the Kubernetes security posture API's workload
		// vulnerability scanning. Available options include
		// VULNERABILITY_DISABLED, VULNERABILITY_BASIC and
		// VULNERABILITY_ENTERPRISE.
		vulnerability_mode?: string
	})

	#service_external_ips_config: close({
		// When enabled, services with external ips specified will be
		// allowed.
		enabled!: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#user_managed_keys_config: close({
		// The Certificate Authority Service caPool to use for the
		// aggreation CA in this cluster.
		aggregation_ca?: string

		// The Certificate Authority Service caPool to use for the cluster
		// CA in this cluster.
		cluster_ca?: string

		// The Cloud KMS cryptoKey to use for Confidential Hyperdisk on
		// the control plane nodes.
		control_plane_disk_encryption_key?: string

		// The Certificate Authority Service caPool to use for the etcd
		// API CA in this cluster.
		etcd_api_ca?: string

		// The Certificate Authority Service caPool to use for the etcd
		// peer CA in this cluster.
		etcd_peer_ca?: string

		// Resource path of the Cloud KMS cryptoKey to use for encryption
		// of internal etcd backups.
		gkeops_etcd_backup_encryption_key?: string

		// The Cloud KMS cryptoKeyVersions to use for signing service
		// account JWTs issued by this cluster.
		service_account_signing_keys?: [...string]

		// The Cloud KMS cryptoKeyVersions to use for verifying service
		// account JWTs issued by this cluster.
		service_account_verification_keys?: [...string]
	})

	#vertical_pod_autoscaling: close({
		// Enables vertical pod autoscaling.
		enabled!: bool
	})

	#workload_identity_config: close({
		// The workload pool to attach all Kubernetes service accounts to.
		workload_pool?: string
	})

	_#defs: "/$defs/addons_config/$defs/cloudrun_config": close({
		disabled!:           bool
		load_balancer_type?: string
	})

	_#defs: "/$defs/addons_config/$defs/config_connector_config": close({
		enabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/dns_cache_config": close({
		enabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/gce_persistent_disk_csi_driver_config": close({
		enabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/gcp_filestore_csi_driver_config": close({
		enabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/gcs_fuse_csi_driver_config": close({
		enabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/gke_backup_agent_config": close({
		enabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/horizontal_pod_autoscaling": close({
		disabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/http_load_balancing": close({
		disabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/lustre_csi_driver_config": close({
		// If set to true, the Lustre CSI driver will initialize LNet (the
		// virtual network layer for Lustre kernel module) using port
		// 6988.
		// This flag is required to workaround a port conflict with the
		// gke-metadata-server on GKE nodes.
		enable_legacy_lustre_port?: bool

		// Whether the Lustre CSI driver is enabled for this cluster.
		enabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/network_policy_config": close({
		disabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/parallelstore_csi_driver_config": close({
		enabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/ray_operator_config": close({
		ray_cluster_logging_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/ray_operator_config/$defs/ray_cluster_logging_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/ray_operator_config/$defs/ray_cluster_logging_config"]])
		ray_cluster_monitoring_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/ray_operator_config/$defs/ray_cluster_monitoring_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/ray_operator_config/$defs/ray_cluster_monitoring_config"]])
		enabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/ray_operator_config/$defs/ray_cluster_logging_config": close({
		enabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/ray_operator_config/$defs/ray_cluster_monitoring_config": close({
		enabled!: bool
	})

	_#defs: "/$defs/addons_config/$defs/stateful_ha_config": close({
		enabled!: bool
	})

	_#defs: "/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults": close({
		// The Customer Managed Encryption Key used to encrypt the boot
		// disk attached to each node in the node pool.
		boot_disk_kms_key?: string

		// Size of the disk attached to each node, specified in GB. The
		// smallest allowed disk size is 10GB.
		disk_size?: number

		// Type of the disk attached to each node.
		disk_type?: string

		// The default image type used by NAP once a new node pool is
		// being created.
		image_type?: string

		// Minimum CPU platform to be used by this instance. The instance
		// may be scheduled on the specified or newer CPU platform.
		// Applicable values are the friendly names of CPU platforms,
		// such as Intel Haswell.
		min_cpu_platform?: string
		management?: matchN(1, [_#defs."/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/management", list.MaxItems(1) & [..._#defs."/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/management"]])
		shielded_instance_config?: matchN(1, [_#defs."/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/shielded_instance_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/shielded_instance_config"]])

		// Scopes that are used by NAP when creating node pools.
		oauth_scopes?: [...string]
		upgrade_settings?: matchN(1, [_#defs."/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/upgrade_settings", list.MaxItems(1) & [..._#defs."/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/upgrade_settings"]])

		// The Google Cloud Platform Service Account to be used by the
		// node VMs.
		service_account?: string
	})

	_#defs: "/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/management": close({
		// Specifies whether the node auto-repair is enabled for the node
		// pool. If enabled, the nodes in this node pool will be
		// monitored and, if they fail health checks too many times, an
		// automatic repair action will be triggered.
		auto_repair?: bool

		// Specifies whether node auto-upgrade is enabled for the node
		// pool. If enabled, node auto-upgrade helps keep the nodes in
		// your node pool up to date with the latest release version of
		// Kubernetes.
		auto_upgrade?: bool

		// Specifies the Auto Upgrade knobs for the node pool.
		upgrade_options?: [...close({
			auto_upgrade_start_time?: string
			description?:             string
		})]
	})

	_#defs: "/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/shielded_instance_config": close({
		// Defines whether the instance has integrity monitoring enabled.
		enable_integrity_monitoring?: bool

		// Defines whether the instance has Secure Boot enabled.
		enable_secure_boot?: bool
	})

	_#defs: "/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/upgrade_settings": close({
		// The maximum number of nodes that can be created beyond the
		// current size of the node pool during the upgrade process.
		max_surge?: number
		blue_green_settings?: matchN(1, [_#defs."/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/upgrade_settings/$defs/blue_green_settings", list.MaxItems(1) & [..._#defs."/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/upgrade_settings/$defs/blue_green_settings"]])

		// The maximum number of nodes that can be simultaneously
		// unavailable during the upgrade process.
		max_unavailable?: number

		// Update strategy of the node pool.
		strategy?: string
	})

	_#defs: "/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/upgrade_settings/$defs/blue_green_settings": close({
		standard_rollout_policy?: matchN(1, [_#defs."/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/upgrade_settings/$defs/blue_green_settings/$defs/standard_rollout_policy", list.MaxItems(1) & [..._#defs."/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/upgrade_settings/$defs/blue_green_settings/$defs/standard_rollout_policy"]])

		// Time needed after draining entire blue pool. After this period,
		// blue pool will be cleaned up.
		//
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		node_pool_soak_duration?: string
	})

	_#defs: "/$defs/cluster_autoscaling/$defs/auto_provisioning_defaults/$defs/upgrade_settings/$defs/blue_green_settings/$defs/standard_rollout_policy": close({
		// Number of blue nodes to drain in a batch.
		batch_node_count?: number

		// Percentage of the bool pool nodes to drain in a batch. The
		// range of this field should be (0.0, 1.0].
		batch_percentage?: number

		// Soak time after each batch gets drained.
		//
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		batch_soak_duration?: string
	})

	_#defs: "/$defs/cluster_autoscaling/$defs/resource_limits": close({
		// Maximum amount of the resource in the cluster.
		maximum!: number

		// Minimum amount of the resource in the cluster.
		minimum?: number

		// The type of the resource. For example, cpu and memory. See the
		// guide to using Node Auto-Provisioning for a list of types.
		resource_type!: string
	})

	_#defs: "/$defs/control_plane_endpoints_config/$defs/dns_endpoint_config": close({
		// Controls whether user traffic is allowed over this endpoint.
		// Note that GCP-managed services may still use the endpoint even
		// if this is false.
		allow_external_traffic?: bool

		// Controls whether the k8s certs auth is allowed via dns.
		enable_k8s_certs_via_dns?: bool

		// Controls whether the k8s token auth is allowed via dns.
		enable_k8s_tokens_via_dns?: bool

		// The cluster's DNS endpoint.
		endpoint?: string
	})

	_#defs: "/$defs/control_plane_endpoints_config/$defs/ip_endpoints_config": close({
		// Controls whether to allow direct IP access.
		enabled?: bool
	})

	_#defs: "/$defs/ip_allocation_policy/$defs/additional_ip_ranges_config": close({
		// List of secondary ranges names within this subnetwork that can
		// be used for pod IPs.
		pod_ipv4_range_names?: [...string]

		// Name of the subnetwork. This can be the full path of the
		// subnetwork or just the name.
		subnetwork!: string
	})

	_#defs: "/$defs/ip_allocation_policy/$defs/additional_pod_ranges_config": close({
		// Name for pod secondary ipv4 range which has the actual range
		// defined ahead.
		pod_range_names!: [...string]
	})

	_#defs: "/$defs/ip_allocation_policy/$defs/auto_ipam_config": close({
		// The flag that enables Auto IPAM on this cluster.
		enabled!: bool
	})

	_#defs: "/$defs/ip_allocation_policy/$defs/network_tier_config": close({
		// Network tier configuration.
		network_tier!: string
	})

	_#defs: "/$defs/ip_allocation_policy/$defs/pod_cidr_overprovision_config": close({
		disabled!: bool
	})

	_#defs: "/$defs/maintenance_policy/$defs/daily_maintenance_window": close({
		duration?:   string
		start_time!: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/maintenance_exclusion": close({
		exclusion_options?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion/$defs/exclusion_options", list.MaxItems(1) & [..._#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion/$defs/exclusion_options"]])
		end_time?:       string
		exclusion_name!: string
		start_time!:     string
	})

	_#defs: "/$defs/maintenance_policy/$defs/maintenance_exclusion/$defs/exclusion_options": close({
		// The behavior of the exclusion end time.
		end_time_behavior?: string

		// The scope of automatic upgrades to restrict in the exclusion
		// window.
		scope!: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/recurring_window": close({
		end_time!:   string
		recurrence!: string
		start_time!: string
	})

	_#defs: "/$defs/master_auth/$defs/client_certificate_config": close({
		// Whether client certificate authorization is enabled for this
		// cluster.
		issue_client_certificate!: bool
	})

	_#defs: "/$defs/master_authorized_networks_config/$defs/cidr_blocks": close({
		// External network that can access Kubernetes master through
		// HTTPS. Must be specified in CIDR notation.
		cidr_block!: string

		// Field for users to identify CIDR blocks.
		display_name?: string
	})

	_#defs: "/$defs/monitoring_config/$defs/advanced_datapath_observability_config": close({
		// Whether or not the advanced datapath metrics are enabled.
		enable_metrics!: bool

		// Whether or not Relay is enabled.
		enable_relay!: bool
	})

	_#defs: "/$defs/monitoring_config/$defs/managed_prometheus": close({
		auto_monitoring_config?: matchN(1, [_#defs."/$defs/monitoring_config/$defs/managed_prometheus/$defs/auto_monitoring_config", list.MaxItems(1) & [..._#defs."/$defs/monitoring_config/$defs/managed_prometheus/$defs/auto_monitoring_config"]])

		// Whether or not the managed collection is enabled.
		enabled!: bool
	})

	_#defs: "/$defs/monitoring_config/$defs/managed_prometheus/$defs/auto_monitoring_config": close({
		// The scope of auto-monitoring.
		scope!: string
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
		registry_hosts?: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts", [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts"]])
		writable_cgroups?: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/writable_cgroups", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/writable_cgroups"]])
	})

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config": close({
		certificate_authority_domain_config?: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config", [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config"]])

		// Whether or not private registries are configured.
		enabled!: bool
	})

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config": close({
		gcp_secret_manager_certificate_config!: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config/$defs/gcp_secret_manager_certificate_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config/$defs/gcp_secret_manager_certificate_config"]])

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

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/registry_hosts": close({
		hosts?: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts", [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts"]])

		// Defines the host name of the registry server.
		server!: string
	})

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts": close({
		// Represent the capabilities of the registry host, specifying
		// what operations a host is capable of performing.
		capabilities?: [...string]

		// Specifies the maximum duration allowed for a connection attempt
		// to complete.
		dial_timeout?: string

		// Configures the registry host/mirror.
		host!: string
		ca?: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/ca", [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/ca"]])
		client?: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client", [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client"]])

		// Indicate the host's API root endpoint is defined in the URL
		// path rather than by the API specification.
		override_path?: bool
		header?: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/header", [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/header"]])
	})

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/ca": close({
		// URI for the Secret Manager secret that hosts the certificate.
		gcp_secret_manager_secret_uri?: string
	})

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client": close({
		cert!: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/cert", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/cert"]])
		key?: matchN(1, [_#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/key", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/key"]])
	})

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/cert": close({
		// URI for the Secret Manager secret that hosts the client
		// certificate.
		gcp_secret_manager_secret_uri?: string
	})

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/key": close({
		// URI for the Secret Manager secret that hosts the private key.
		gcp_secret_manager_secret_uri?: string
	})

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/header": close({
		// Configures the header key.
		key!: string

		// Configures the header value.
		value!: [...string]
	})

	_#defs: "/$defs/node_config/$defs/containerd_config/$defs/writable_cgroups": close({
		// Whether writable cgroups are enabled.
		enabled!: bool
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

		// The Linux kernel transparent hugepage setting.
		transparent_hugepage_enabled?: string
		hugepages_config?: matchN(1, [_#defs."/$defs/node_config/$defs/linux_node_config/$defs/hugepages_config", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/linux_node_config/$defs/hugepages_config"]])
		node_kernel_module_loading?: matchN(1, [_#defs."/$defs/node_config/$defs/linux_node_config/$defs/node_kernel_module_loading", list.MaxItems(1) & [..._#defs."/$defs/node_config/$defs/linux_node_config/$defs/node_kernel_module_loading"]])
	})

	_#defs: "/$defs/node_config/$defs/linux_node_config/$defs/hugepages_config": close({
		// Amount of 1G hugepages.
		hugepage_size_1g?: number

		// Amount of 2M hugepages.
		hugepage_size_2m?: number
	})

	_#defs: "/$defs/node_config/$defs/linux_node_config/$defs/node_kernel_module_loading": close({
		// The policy for kernel module loading.
		policy?: string
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
		node_affinity!: matchN(1, [_#defs."/$defs/node_config/$defs/sole_tenant_config/$defs/node_affinity", [_, ...] & [..._#defs."/$defs/node_config/$defs/sole_tenant_config/$defs/node_affinity"]])

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

	_#defs: "/$defs/node_pool/$defs/autoscaling": close({
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

	_#defs: "/$defs/node_pool/$defs/management": close({
		// Whether the nodes will be automatically repaired. Enabled by
		// default.
		auto_repair?: bool

		// Whether the nodes will be automatically upgraded. Enabled by
		// default.
		auto_upgrade?: bool
	})

	_#defs: "/$defs/node_pool/$defs/network_config": close({
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
		additional_node_network_configs?: matchN(1, [_#defs."/$defs/node_pool/$defs/network_config/$defs/additional_node_network_configs", [..._#defs."/$defs/node_pool/$defs/network_config/$defs/additional_node_network_configs"]])
		additional_pod_network_configs?: matchN(1, [_#defs."/$defs/node_pool/$defs/network_config/$defs/additional_pod_network_configs", [..._#defs."/$defs/node_pool/$defs/network_config/$defs/additional_pod_network_configs"]])

		// The subnetwork path for the node pool. Format:
		// projects/{project}/regions/{region}/subnetworks/{subnetwork} .
		// If the cluster is associated with multiple subnetworks, the
		// subnetwork for the node pool is picked based on the IP
		// utilization during node pool creation and is immutable.
		subnetwork?: string
		network_performance_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/network_config/$defs/network_performance_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/network_config/$defs/network_performance_config"]])
		pod_cidr_overprovision_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/network_config/$defs/pod_cidr_overprovision_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/network_config/$defs/pod_cidr_overprovision_config"]])
	})

	_#defs: "/$defs/node_pool/$defs/network_config/$defs/additional_node_network_configs": close({
		// Name of the VPC where the additional interface belongs.
		network?: string

		// Name of the subnetwork where the additional interface belongs.
		subnetwork?: string
	})

	_#defs: "/$defs/node_pool/$defs/network_config/$defs/additional_pod_network_configs": close({
		// The maximum number of pods per node which use this pod network.
		max_pods_per_node?: number

		// The name of the secondary range on the subnet which provides IP
		// address for this pod range.
		secondary_pod_range?: string

		// Name of the subnetwork where the additional pod network
		// belongs.
		subnetwork?: string
	})

	_#defs: "/$defs/node_pool/$defs/network_config/$defs/network_performance_config": close({
		// Specifies the total network bandwidth tier for the NodePool.
		// [Valid
		// values](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.Tier)
		// include: "TIER_1" and "TIER_UNSPECIFIED".
		total_egress_bandwidth_tier!: string
	})

	_#defs: "/$defs/node_pool/$defs/network_config/$defs/pod_cidr_overprovision_config": close({
		disabled!: bool
	})

	_#defs: "/$defs/node_pool/$defs/node_config": close({
		// The Customer Managed Encryption Key used to encrypt the boot
		// disk attached to each node in the node pool.
		boot_disk_kms_key?: string
		advanced_machine_features?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/advanced_machine_features", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/advanced_machine_features"]])

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
		boot_disk?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/boot_disk", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/boot_disk"]])
		confidential_nodes?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/confidential_nodes", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/confidential_nodes"]])
		containerd_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config"]])
		ephemeral_storage_local_ssd_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/ephemeral_storage_local_ssd_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/ephemeral_storage_local_ssd_config"]])
		fast_socket?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/fast_socket", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/fast_socket"]])
		gcfs_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/gcfs_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/gcfs_config"]])
		guest_accelerator?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/guest_accelerator", [..._#defs."/$defs/node_pool/$defs/node_config/$defs/guest_accelerator"]])
		gvnic?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/gvnic", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/gvnic"]])
		host_maintenance_policy?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/host_maintenance_policy", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/host_maintenance_policy"]])
		kubelet_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/kubelet_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/kubelet_config"]])
		linux_node_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/linux_node_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/linux_node_config"]])
		local_nvme_ssd_block_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/local_nvme_ssd_block_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/local_nvme_ssd_block_config"]])
		reservation_affinity?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/reservation_affinity", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/reservation_affinity"]])
		secondary_boot_disks?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/secondary_boot_disks", list.MaxItems(127) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/secondary_boot_disks"]])
		shielded_instance_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/shielded_instance_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/shielded_instance_config"]])
		sole_tenant_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/sole_tenant_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/sole_tenant_config"]])
		taint?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/taint", [..._#defs."/$defs/node_pool/$defs/node_config/$defs/taint"]])
		windows_node_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/windows_node_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/windows_node_config"]])
		workload_metadata_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/workload_metadata_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/workload_metadata_config"]])

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

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/advanced_machine_features": close({
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

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/boot_disk": close({
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

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/confidential_nodes": close({
		// Defines the type of technology used by the confidential node.
		confidential_instance_type?: string

		// Whether Confidential Nodes feature is enabled for all nodes in
		// this pool.
		enabled!: bool
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/containerd_config": close({
		private_registry_access_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config"]])
		registry_hosts?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts", [..._#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts"]])
		writable_cgroups?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/writable_cgroups", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/writable_cgroups"]])
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config": close({
		certificate_authority_domain_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config", [..._#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config"]])

		// Whether or not private registries are configured.
		enabled!: bool
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config": close({
		gcp_secret_manager_certificate_config!: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config/$defs/gcp_secret_manager_certificate_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config/$defs/gcp_secret_manager_certificate_config"]])

		// List of fully-qualified-domain-names. IPv4s and port
		// specification are supported.
		fqdns!: [...string]
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config/$defs/gcp_secret_manager_certificate_config": close({
		// URI for the secret that hosts a certificate. Must be in the
		// format
		// 'projects/PROJECT_NUM/secrets/SECRET_NAME/versions/VERSION_OR_LATEST'.
		secret_uri!: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts": close({
		hosts?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts", [..._#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts"]])

		// Defines the host name of the registry server.
		server!: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts": close({
		// Represent the capabilities of the registry host, specifying
		// what operations a host is capable of performing.
		capabilities?: [...string]

		// Specifies the maximum duration allowed for a connection attempt
		// to complete.
		dial_timeout?: string

		// Configures the registry host/mirror.
		host!: string
		ca?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/ca", [..._#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/ca"]])
		client?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client", [..._#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client"]])

		// Indicate the host's API root endpoint is defined in the URL
		// path rather than by the API specification.
		override_path?: bool
		header?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/header", [..._#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/header"]])
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/ca": close({
		// URI for the Secret Manager secret that hosts the certificate.
		gcp_secret_manager_secret_uri?: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client": close({
		cert!: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/cert", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/cert"]])
		key?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/key", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/key"]])
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/cert": close({
		// URI for the Secret Manager secret that hosts the client
		// certificate.
		gcp_secret_manager_secret_uri?: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/key": close({
		// URI for the Secret Manager secret that hosts the private key.
		gcp_secret_manager_secret_uri?: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/header": close({
		// Configures the header key.
		key!: string

		// Configures the header value.
		value!: [...string]
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/containerd_config/$defs/writable_cgroups": close({
		// Whether writable cgroups are enabled.
		enabled!: bool
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/ephemeral_storage_local_ssd_config": close({
		// Number of local SSDs to be utilized for GKE Data Cache. Uses
		// NVMe interfaces.
		data_cache_count?: number

		// Number of local SSDs to use to back ephemeral storage. Uses
		// NVMe interfaces. Each local SSD must be 375 or 3000 GB in
		// size, and all local SSDs must share the same size.
		local_ssd_count!: number
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/fast_socket": close({
		// Whether or not NCCL Fast Socket is enabled
		enabled!: bool
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/gcfs_config": close({
		// Whether or not GCFS is enabled
		enabled!: bool
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/guest_accelerator": close({
		// The number of the accelerator cards exposed to an instance.
		count!: number

		// Size of partitions to create on the GPU. Valid values are
		// described in the NVIDIA mig user guide
		// (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning)
		gpu_partition_size?: string
		gpu_driver_installation_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/guest_accelerator/$defs/gpu_driver_installation_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/guest_accelerator/$defs/gpu_driver_installation_config"]])

		// The accelerator type resource name.
		type!: string
		gpu_sharing_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/guest_accelerator/$defs/gpu_sharing_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/guest_accelerator/$defs/gpu_sharing_config"]])
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/guest_accelerator/$defs/gpu_driver_installation_config": close({
		// Mode for how the GPU driver is installed.
		gpu_driver_version!: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/guest_accelerator/$defs/gpu_sharing_config": close({
		// The type of GPU sharing strategy to enable on the GPU node.
		// Possible values are described in the API package
		// (https://pkg.go.dev/google.golang.org/api/container/v1#GPUSharingConfig)
		gpu_sharing_strategy!: string

		// The maximum number of containers that can share a GPU.
		max_shared_clients_per_gpu!: number
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/gvnic": close({
		// Whether or not gvnic is enabled
		enabled!: bool
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/host_maintenance_policy": close({
		// .
		maintenance_interval!: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/kubelet_config": close({
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
		eviction_minimum_reclaim?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/eviction_minimum_reclaim", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/eviction_minimum_reclaim"]])
		eviction_soft?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/eviction_soft", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/eviction_soft"]])
		eviction_soft_grace_period?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/eviction_soft_grace_period", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/eviction_soft_grace_period"]])

		// Defines the minimum age for an unused image before it is
		// garbage collected.
		image_minimum_gc_age?: string
		memory_manager?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/memory_manager", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/memory_manager"]])

		// Controls whether the kubelet read-only port is enabled. It is
		// strongly recommended to set this to `FALSE`. Possible values:
		// `TRUE`, `FALSE`.
		insecure_kubelet_readonly_port_enabled?: string
		topology_manager?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/topology_manager", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/topology_manager"]])

		// Set the maximum number of image pulls in parallel.
		max_parallel_image_pulls?: number

		// Controls the maximum number of processes allowed to run in a
		// pod.
		pod_pids_limit?: number

		// Defines whether to enable single process OOM killer.
		single_process_oom_kill?: bool
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/eviction_minimum_reclaim": close({
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

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/eviction_soft": close({
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

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/eviction_soft_grace_period": close({
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

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/memory_manager": close({
		// The Memory Manager policy to use. This policy guides how memory
		// and hugepages are allocated and managed for pods on the node,
		// influencing NUMA affinity.
		policy?: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/kubelet_config/$defs/topology_manager": close({
		// The Topology Manager policy to use. This policy dictates how
		// resource alignment is handled on the node.
		policy?: string

		// The Topology Manager scope, defining the granularity at which
		// policy decisions are applied. Valid values are "container"
		// (resources are aligned per container within a pod) or "pod"
		// (resources are aligned for the entire pod).
		scope?: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/linux_node_config": close({
		// cgroupMode specifies the cgroup mode to be used on the node.
		cgroup_mode?: string

		// The Linux kernel parameters to be applied to the nodes and all
		// pods running on the nodes.
		sysctls?: [string]: string

		// The Linux kernel transparent hugepage defrag setting.
		transparent_hugepage_defrag?: string

		// The Linux kernel transparent hugepage setting.
		transparent_hugepage_enabled?: string
		hugepages_config?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/linux_node_config/$defs/hugepages_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/linux_node_config/$defs/hugepages_config"]])
		node_kernel_module_loading?: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/linux_node_config/$defs/node_kernel_module_loading", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/linux_node_config/$defs/node_kernel_module_loading"]])
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/linux_node_config/$defs/hugepages_config": close({
		// Amount of 1G hugepages.
		hugepage_size_1g?: number

		// Amount of 2M hugepages.
		hugepage_size_2m?: number
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/linux_node_config/$defs/node_kernel_module_loading": close({
		// The policy for kernel module loading.
		policy?: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/local_nvme_ssd_block_config": close({
		// Number of raw-block local NVMe SSD disks to be attached to the
		// node. Each local SSD is 375 GB in size.
		local_ssd_count!: number
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/reservation_affinity": close({
		// Corresponds to the type of reservation consumption.
		consume_reservation_type!: string

		// The label key of a reservation resource.
		key?: string

		// The label values of the reservation resource.
		values?: [...string]
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/secondary_boot_disks": close({
		// Disk image to create the secondary boot disk from
		disk_image!: string

		// Mode for how the secondary boot disk is used.
		mode?: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/shielded_instance_config": close({
		// Defines whether the instance has integrity monitoring enabled.
		enable_integrity_monitoring?: bool

		// Defines whether the instance has Secure Boot enabled.
		enable_secure_boot?: bool
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/sole_tenant_config": close({
		node_affinity!: matchN(1, [_#defs."/$defs/node_pool/$defs/node_config/$defs/sole_tenant_config/$defs/node_affinity", [_, ...] & [..._#defs."/$defs/node_pool/$defs/node_config/$defs/sole_tenant_config/$defs/node_affinity"]])

		// Specifies the minimum number of vCPUs that each sole tenant
		// node must have to use CPU overcommit. If not specified, the
		// CPU overcommit feature is disabled.
		min_node_cpus?: number
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/sole_tenant_config/$defs/node_affinity": close({
		// .
		key!: string

		// .
		operator!: string

		// .
		values!: [...string]
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/taint": close({
		// Effect for taint.
		effect!: string

		// Key for taint.
		key!: string

		// Value for taint.
		value!: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/windows_node_config": close({
		// The OS Version of the windows nodepool.Values are
		// OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and
		// OS_VERSION_LTSC2022
		osversion?: string
	})

	_#defs: "/$defs/node_pool/$defs/node_config/$defs/workload_metadata_config": close({
		// Mode is the configuration for how to expose metadata to
		// workloads running on the node.
		mode!: string
	})

	_#defs: "/$defs/node_pool/$defs/placement_policy": close({
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

	_#defs: "/$defs/node_pool/$defs/queued_provisioning": close({
		// Whether nodes in this node pool are obtainable solely through
		// the ProvisioningRequest API
		enabled!: bool
	})

	_#defs: "/$defs/node_pool/$defs/upgrade_settings": close({
		// The number of additional nodes that can be added to the node
		// pool during an upgrade. Increasing max_surge raises the number
		// of nodes that can be upgraded simultaneously. Can be set to 0
		// or greater.
		max_surge?: number
		blue_green_settings?: matchN(1, [_#defs."/$defs/node_pool/$defs/upgrade_settings/$defs/blue_green_settings", list.MaxItems(1) & [..._#defs."/$defs/node_pool/$defs/upgrade_settings/$defs/blue_green_settings"]])

		// The number of nodes that can be simultaneously unavailable
		// during an upgrade. Increasing max_unavailable raises the
		// number of nodes that can be upgraded in parallel. Can be set
		// to 0 or greater.
		max_unavailable?: number

		// Update strategy for the given nodepool.
		strategy?: string
	})

	_#defs: "/$defs/node_pool/$defs/upgrade_settings/$defs/blue_green_settings": close({
		standard_rollout_policy!: matchN(1, [_#defs."/$defs/node_pool/$defs/upgrade_settings/$defs/blue_green_settings/$defs/standard_rollout_policy", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/node_pool/$defs/upgrade_settings/$defs/blue_green_settings/$defs/standard_rollout_policy"]])

		// Time needed after draining entire blue pool. After this period,
		// blue pool will be cleaned up.
		node_pool_soak_duration?: string
	})

	_#defs: "/$defs/node_pool/$defs/upgrade_settings/$defs/blue_green_settings/$defs/standard_rollout_policy": close({
		// Number of blue nodes to drain in a batch.
		batch_node_count?: number

		// Percentage of the blue pool nodes to drain in a batch.
		batch_percentage?: number

		// Soak time after each batch gets drained.
		batch_soak_duration?: string
	})

	_#defs: "/$defs/node_pool_auto_config/$defs/linux_node_config": close({
		node_kernel_module_loading?: matchN(1, [_#defs."/$defs/node_pool_auto_config/$defs/linux_node_config/$defs/node_kernel_module_loading", list.MaxItems(1) & [..._#defs."/$defs/node_pool_auto_config/$defs/linux_node_config/$defs/node_kernel_module_loading"]])

		// cgroupMode specifies the cgroup mode to be used on the node.
		cgroup_mode?: string
	})

	_#defs: "/$defs/node_pool_auto_config/$defs/linux_node_config/$defs/node_kernel_module_loading": close({
		// The policy for kernel module loading.
		policy?: string
	})

	_#defs: "/$defs/node_pool_auto_config/$defs/network_tags": close({
		// List of network tags applied to auto-provisioned node pools.
		tags?: [...string]
	})

	_#defs: "/$defs/node_pool_auto_config/$defs/node_kubelet_config": close({
		// Controls whether the kubelet read-only port is enabled. It is
		// strongly recommended to set this to `FALSE`. Possible values:
		// `TRUE`, `FALSE`.
		insecure_kubelet_readonly_port_enabled?: string
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults": close({
		containerd_config?: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config"]])
		gcfs_config?: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/gcfs_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/gcfs_config"]])

		// Controls whether the kubelet read-only port is enabled. It is
		// strongly recommended to set this to `FALSE`. Possible values:
		// `TRUE`, `FALSE`.
		insecure_kubelet_readonly_port_enabled?: string

		// Type of logging agent that is used as the default value for
		// node pools in the cluster. Valid values include DEFAULT and
		// MAX_THROUGHPUT.
		logging_variant?: string
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config": close({
		private_registry_access_config?: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/private_registry_access_config", list.MaxItems(1) & [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/private_registry_access_config"]])
		registry_hosts?: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts", [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts"]])
		writable_cgroups?: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/writable_cgroups", list.MaxItems(1) & [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/writable_cgroups"]])
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/private_registry_access_config": close({
		certificate_authority_domain_config?: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config", [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config"]])

		// Whether or not private registries are configured.
		enabled!: bool
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config": close({
		gcp_secret_manager_certificate_config!: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config/$defs/gcp_secret_manager_certificate_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config/$defs/gcp_secret_manager_certificate_config"]])

		// List of fully-qualified-domain-names. IPv4s and port
		// specification are supported.
		fqdns!: [...string]
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/private_registry_access_config/$defs/certificate_authority_domain_config/$defs/gcp_secret_manager_certificate_config": close({
		// URI for the secret that hosts a certificate. Must be in the
		// format
		// 'projects/PROJECT_NUM/secrets/SECRET_NAME/versions/VERSION_OR_LATEST'.
		secret_uri!: string
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts": close({
		hosts?: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts", [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts"]])

		// Defines the host name of the registry server.
		server!: string
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts": close({
		// Represent the capabilities of the registry host, specifying
		// what operations a host is capable of performing.
		capabilities?: [...string]

		// Specifies the maximum duration allowed for a connection attempt
		// to complete.
		dial_timeout?: string

		// Configures the registry host/mirror.
		host!: string
		ca?: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/ca", [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/ca"]])
		client?: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client", [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client"]])

		// Indicate the host's API root endpoint is defined in the URL
		// path rather than by the API specification.
		override_path?: bool
		header?: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/header", [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/header"]])
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/ca": close({
		// URI for the Secret Manager secret that hosts the certificate.
		gcp_secret_manager_secret_uri?: string
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client": close({
		cert!: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/cert", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/cert"]])
		key?: matchN(1, [_#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/key", list.MaxItems(1) & [..._#defs."/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/key"]])
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/cert": close({
		// URI for the Secret Manager secret that hosts the client
		// certificate.
		gcp_secret_manager_secret_uri?: string
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/client/$defs/key": close({
		// URI for the Secret Manager secret that hosts the private key.
		gcp_secret_manager_secret_uri?: string
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/registry_hosts/$defs/hosts/$defs/header": close({
		// Configures the header key.
		key!: string

		// Configures the header value.
		value!: [...string]
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/containerd_config/$defs/writable_cgroups": close({
		// Whether writable cgroups are enabled.
		enabled!: bool
	})

	_#defs: "/$defs/node_pool_defaults/$defs/node_config_defaults/$defs/gcfs_config": close({
		// Whether or not GCFS is enabled
		enabled!: bool
	})

	_#defs: "/$defs/notification_config/$defs/pubsub": close({
		filter?: matchN(1, [_#defs."/$defs/notification_config/$defs/pubsub/$defs/filter", list.MaxItems(1) & [..._#defs."/$defs/notification_config/$defs/pubsub/$defs/filter"]])

		// Whether or not the notification config is enabled
		enabled!: bool

		// The pubsub topic to push upgrade notifications to. Must be in
		// the same project as the cluster. Must be in the format:
		// projects/{project}/topics/{topic}.
		topic?: string
	})

	_#defs: "/$defs/notification_config/$defs/pubsub/$defs/filter": close({
		// Can be used to filter what notifications are sent. Valid values
		// include include UPGRADE_AVAILABLE_EVENT, UPGRADE_EVENT,
		// SECURITY_BULLETIN_EVENT, and UPGRADE_INFO_EVENT
		event_type!: [...string]
	})

	_#defs: "/$defs/private_cluster_config/$defs/master_global_access_config": close({
		// Whether the cluster master is accessible globally or not.
		enabled!: bool
	})

	_#defs: "/$defs/resource_usage_export_config/$defs/bigquery_destination": close({
		// The ID of a BigQuery Dataset.
		dataset_id!: string
	})

	_#defs: "/$defs/secret_manager_config/$defs/rotation_config": close({
		// Enable the Secret manager auto rotation.
		enabled!: bool

		// The interval between two consecutive rotations. Default
		// rotation interval is 2 minutes
		rotation_interval?: string
	})
}
