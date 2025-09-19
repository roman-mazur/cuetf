package data

#google_container_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_container_cluster")
	close({
		// The configuration for addons supported by GKE.
		addons_config?: [...close({
			cloudrun_config?: [...close({
				disabled?:           bool
				load_balancer_type?: string
			})]
			config_connector_config?: [...close({
				enabled?: bool
			})]
			dns_cache_config?: [...close({
				enabled?: bool
			})]
			gce_persistent_disk_csi_driver_config?: [...close({
				enabled?: bool
			})]
			gcp_filestore_csi_driver_config?: [...close({
				enabled?: bool
			})]
			gcs_fuse_csi_driver_config?: [...close({
				enabled?: bool
			})]
			gke_backup_agent_config?: [...close({
				enabled?: bool
			})]
			horizontal_pod_autoscaling?: [...close({
				disabled?: bool
			})]
			http_load_balancing?: [...close({
				disabled?: bool
			})]
			lustre_csi_driver_config?: [...close({
				enable_legacy_lustre_port?: bool
				enabled?:                   bool
			})]
			network_policy_config?: [...close({
				disabled?: bool
			})]
			parallelstore_csi_driver_config?: [...close({
				enabled?: bool
			})]
			ray_operator_config?: [...close({
				enabled?: bool
				ray_cluster_logging_config?: [...close({
					enabled?: bool
				})]
				ray_cluster_monitoring_config?: [...close({
					enabled?: bool
				})]
			})]
			stateful_ha_config?: [...close({
				enabled?: bool
			})]
		})]

		// Enable NET_ADMIN for this cluster.
		allow_net_admin?: bool

		// AnonymousAuthenticationConfig allows users to restrict or
		// enable anonymous access to the cluster.
		anonymous_authentication_config?: [...close({
			mode?: string
		})]

		// Configuration for the Google Groups for GKE feature.
		authenticator_groups_config?: [...close({
			security_group?: string
		})]

		// Configuration options for the Binary Authorization feature.
		binary_authorization?: [...close({
			enabled?:         bool
			evaluation_mode?: string
		})]

		// Per-cluster configuration of Node Auto-Provisioning with
		// Cluster Autoscaler to automatically adjust the size of the
		// cluster and create/delete node pools based on the current
		// needs of the cluster's workload. See the guide to using Node
		// Auto-Provisioning for more details.
		cluster_autoscaling?: [...close({
			auto_provisioning_defaults?: [...close({
				boot_disk_kms_key?: string
				disk_size?:         number
				disk_type?:         string
				image_type?:        string
				management?: [...close({
					auto_repair?:  bool
					auto_upgrade?: bool
					upgrade_options?: [...close({
						auto_upgrade_start_time?: string
						description?:             string
					})]
				})]
				min_cpu_platform?: string
				oauth_scopes?: [...string]
				service_account?: string
				shielded_instance_config?: [...close({
					enable_integrity_monitoring?: bool
					enable_secure_boot?:          bool
				})]
				upgrade_settings?: [...close({
					blue_green_settings?: [...close({
						node_pool_soak_duration?: string
						standard_rollout_policy?: [...close({
							batch_node_count?:    number
							batch_percentage?:    number
							batch_soak_duration?: string
						})]
					})]
					max_surge?:       number
					max_unavailable?: number
					strategy?:        string
				})]
			})]
			auto_provisioning_locations?: [...string]
			autoscaling_profile?:           string
			default_compute_class_enabled?: bool
			enabled?:                       bool
			resource_limits?: [...close({
				maximum?:       number
				minimum?:       number
				resource_type?: string
			})]
		})]

		// The IP address range of the Kubernetes pods in this cluster in
		// CIDR notation (e.g. 10.96.0.0/14). Leave blank to have one
		// automatically chosen or specify a /14 block in 10.0.0.0/8.
		// This field will only work for routes-based clusters, where
		// ip_allocation_policy is not defined.
		cluster_ipv4_cidr?: string

		// Configuration for the confidential nodes feature, which makes
		// nodes run on confidential VMs. Warning: This configuration
		// can't be changed (or added/removed) after cluster creation
		// without deleting and recreating the entire cluster.
		confidential_nodes?: [...close({
			confidential_instance_type?: string
			enabled?:                    bool
		})]

		// Configuration for all of the cluster's control plane endpoints.
		// Currently supports only DNS endpoint configuration and disable
		// IP endpoint. Other IP endpoint configurations are available in
		// private_cluster_config.
		control_plane_endpoints_config?: [...close({
			dns_endpoint_config?: [...close({
				allow_external_traffic?: bool
				endpoint?:               string
			})]
			ip_endpoints_config?: [...close({
				enabled?: bool
			})]
		})]

		// Cost management configuration for the cluster.
		cost_management_config?: [...close({
			enabled?: bool
		})]

		// Application-layer Secrets Encryption settings. The object
		// format is {state = string, key_name = string}. Valid values of
		// state are: "ENCRYPTED"; "DECRYPTED". key_name is the name of a
		// CloudKMS key.
		database_encryption?: [...close({
			key_name?: string
			state?:    string
		})]

		// The desired datapath provider for this cluster. By default,
		// uses the IPTables-based kube-proxy implementation.
		datapath_provider?: string

		// The default maximum number of pods per node in this cluster.
		// This doesn't work on "routes-based" clusters, clusters that
		// don't have IP Aliasing enabled.
		default_max_pods_per_node?: number

		// Whether the cluster disables default in-node sNAT rules.
		// In-node sNAT rules will be disabled when defaultSnatStatus is
		// disabled.
		default_snat_status?: [...close({
			disabled?: bool
		})]

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

		// Configuration for Cloud DNS for Kubernetes Engine.
		dns_config?: [...close({
			additive_vpc_scope_dns_domain?: string
			cluster_dns?:                   string
			cluster_dns_domain?:            string
			cluster_dns_scope?:             string
		})]

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

		// Configuration for Kubernetes Beta APIs.
		enable_k8s_beta_apis?: [...close({
			enabled_apis?: [...string]
		})]

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

		// Defines the config needed to enable/disable GKE Enterprise
		enterprise_config?: [...close({
			cluster_tier?: string
			desired_tier?: string
		})]

		// Fleet configuration of the cluster.
		fleet?: [...close({
			membership?:          string
			membership_id?:       string
			membership_location?: string
			pre_registered?:      bool
			project?:             string
		})]

		// Configuration for GKE Gateway API controller.
		gateway_api_config?: [...close({
			channel?: string
		})]

		// Configuration options for the auto-upgrade patch type feature,
		// which provide more control over the speed of automatic
		// upgrades of your GKE clusters.
		gke_auto_upgrade_config?: [...close({
			patch_mode?: string
		})]
		id?: string

		// Configuration for Identity Service which allows customers to
		// use external identity providers with the K8S API.
		identity_service_config?: [...close({
			enabled?: bool
		})]

		// Defines the config of in-transit encryption
		in_transit_encryption_config?: string

		// The number of nodes to create in this cluster's default node
		// pool. In regional or multi-zonal clusters, this is the number
		// of nodes per zone. Must be set if node_pool is not set. If
		// you're using google_container_node_pool objects with no
		// default node pool, you'll need to set this to a value of at
		// least 1, alongside setting remove_default_node_pool to true.
		initial_node_count?: number

		// Configuration of cluster IP allocation for VPC-native clusters.
		// Adding this block enables IP aliasing, making the cluster
		// VPC-native instead of routes-based.
		ip_allocation_policy?: [...close({
			additional_ip_ranges_config?: [...close({
				pod_ipv4_range_names?: [...string]
				subnetwork?: string
			})]
			additional_pod_ranges_config?: [...close({
				pod_range_names?: [...string]
			})]
			cluster_ipv4_cidr_block?:      string
			cluster_secondary_range_name?: string
			pod_cidr_overprovision_config?: [...close({
				disabled?: bool
			})]
			services_ipv4_cidr_block?:      string
			services_secondary_range_name?: string
			stack_type?:                    string
		})]

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

		// Logging configuration for the cluster.
		logging_config?: [...close({
			enable_components?: [...string]
		})]

		// The logging service that the cluster should write logs to.
		// Available options include logging.googleapis.com(Legacy
		// Stackdriver), logging.googleapis.com/kubernetes(Stackdriver
		// Kubernetes Engine Logging), and none. Defaults to
		// logging.googleapis.com/kubernetes.
		logging_service?: string

		// The maintenance policy to use for the cluster.
		maintenance_policy?: [...close({
			daily_maintenance_window?: [...close({
				duration?:   string
				start_time?: string
			})]
			maintenance_exclusion?: [...close({
				end_time?:       string
				exclusion_name?: string
				exclusion_options?: [...close({
					scope?: string
				})]
				start_time?: string
			})]
			recurring_window?: [...close({
				end_time?:   string
				recurrence?: string
				start_time?: string
			})]
		})]

		// The authentication information for accessing the Kubernetes
		// master. Some values in this block are only returned by the API
		// if your service account has permission to get credentials for
		// your GKE cluster. If you see an unexpected diff unsetting your
		// client cert, ensure you have the
		// container.clusters.getCredentials permission.
		master_auth?: [...close({
			client_certificate?: string
			client_certificate_config?: [...close({
				issue_client_certificate?: bool
			})]
			client_key?:             string
			cluster_ca_certificate?: string
		})]

		// The desired configuration options for master authorized
		// networks. Omit the nested cidr_blocks attribute to disallow
		// external access (except the cluster node IPs, which GKE
		// automatically whitelists).
		master_authorized_networks_config?: [...close({
			cidr_blocks?: [...close({
				cidr_block?:   string
				display_name?: string
			})]
			gcp_public_cidrs_access_enabled?:      bool
			private_endpoint_enforcement_enabled?: bool
		})]

		// The current version of the master in the cluster. This may be
		// different than the min_master_version set in the config if the
		// master has been updated by GKE.
		master_version?: string

		// If set, and enable_certificates=true, the GKE Workload Identity
		// Certificates controller and node agent will be deployed in the
		// cluster.
		mesh_certificates?: [...close({
			enable_certificates?: bool
		})]

		// The minimum version of the master. GKE will auto-update the
		// master to new versions, so this does not guarantee the current
		// master version--use the read-only master_version field to
		// obtain that. If unset, the cluster's version will be set by
		// GKE to the version of the most recent official release (which
		// is not necessarily the latest version).
		min_master_version?: string

		// Monitoring configuration for the cluster.
		monitoring_config?: [...close({
			advanced_datapath_observability_config?: [...close({
				enable_metrics?: bool
				enable_relay?:   bool
			})]
			enable_components?: [...string]
			managed_prometheus?: [...close({
				auto_monitoring_config?: [...close({
					scope?: string
				})]
				enabled?: bool
			})]
		})]

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

		// Network bandwidth tier configuration.
		network_performance_config?: [...close({
			total_egress_bandwidth_tier?: string
		})]

		// Configuration options for the NetworkPolicy feature.
		network_policy?: [...close({
			enabled?:  bool
			provider?: string
		})]

		// Determines whether alias IPs or routes will be used for pod IPs
		// in the cluster. Defaults to VPC_NATIVE for new clusters.
		networking_mode?: string

		// The configuration of the nodepool
		node_config?: [...close({
			advanced_machine_features?: [...close({
				enable_nested_virtualization?: bool
				performance_monitoring_unit?:  string
				threads_per_core?:             number
			})]
			boot_disk?: [...close({
				disk_type?:              string
				provisioned_iops?:       number
				provisioned_throughput?: number
				size_gb?:                number
			})]
			boot_disk_kms_key?: string
			confidential_nodes?: [...close({
				confidential_instance_type?: string
				enabled?:                    bool
			})]
			containerd_config?: [...close({
				private_registry_access_config?: [...close({
					certificate_authority_domain_config?: [...close({
						fqdns?: [...string]
						gcp_secret_manager_certificate_config?: [...close({
							secret_uri?: string
						})]
					})]
					enabled?: bool
				})]
			})]
			disk_size_gb?: number
			disk_type?:    string
			effective_taints?: [...close({
				effect?: string
				key?:    string
				value?:  string
			})]
			enable_confidential_storage?: bool
			ephemeral_storage_local_ssd_config?: [...close({
				data_cache_count?: number
				local_ssd_count?:  number
			})]
			fast_socket?: [...close({
				enabled?: bool
			})]
			flex_start?: bool
			gcfs_config?: [...close({
				enabled?: bool
			})]
			guest_accelerator?: [...close({
				count?: number
				gpu_driver_installation_config?: [...close({
					gpu_driver_version?: string
				})]
				gpu_partition_size?: string
				gpu_sharing_config?: [...close({
					gpu_sharing_strategy?:       string
					max_shared_clients_per_gpu?: number
				})]
				type?: string
			})]
			gvnic?: [...close({
				enabled?: bool
			})]
			host_maintenance_policy?: [...close({
				maintenance_interval?: string
			})]
			image_type?: string
			kubelet_config?: [...close({
				allowed_unsafe_sysctls?: [...string]
				container_log_max_files?:               number
				container_log_max_size?:                string
				cpu_cfs_quota?:                         bool
				cpu_cfs_quota_period?:                  string
				cpu_manager_policy?:                    string
				eviction_max_pod_grace_period_seconds?: number
				eviction_minimum_reclaim?: [...close({
					imagefs_available?:   string
					imagefs_inodes_free?: string
					memory_available?:    string
					nodefs_available?:    string
					nodefs_inodes_free?:  string
					pid_available?:       string
				})]
				eviction_soft?: [...close({
					imagefs_available?:   string
					imagefs_inodes_free?: string
					memory_available?:    string
					nodefs_available?:    string
					nodefs_inodes_free?:  string
					pid_available?:       string
				})]
				eviction_soft_grace_period?: [...close({
					imagefs_available?:   string
					imagefs_inodes_free?: string
					memory_available?:    string
					nodefs_available?:    string
					nodefs_inodes_free?:  string
					pid_available?:       string
				})]
				image_gc_high_threshold_percent?:        number
				image_gc_low_threshold_percent?:         number
				image_maximum_gc_age?:                   string
				image_minimum_gc_age?:                   string
				insecure_kubelet_readonly_port_enabled?: string
				max_parallel_image_pulls?:               number
				memory_manager?: [...close({
					policy?: string
				})]
				pod_pids_limit?:          number
				single_process_oom_kill?: bool
				topology_manager?: [...close({
					policy?: string
					scope?:  string
				})]
			})]
			labels?: [string]: string
			linux_node_config?: [...close({
				cgroup_mode?: string
				hugepages_config?: [...close({
					hugepage_size_1g?: number
					hugepage_size_2m?: number
				})]
				sysctls?: [string]: string
				transparent_hugepage_defrag?:  string
				transparent_hugepage_enabled?: string
			})]
			local_nvme_ssd_block_config?: [...close({
				local_ssd_count?: number
			})]
			local_ssd_count?:           number
			local_ssd_encryption_mode?: string
			logging_variant?:           string
			machine_type?:              string
			max_run_duration?:          string
			metadata?: [string]: string
			min_cpu_platform?: string
			node_group?:       string
			oauth_scopes?: [...string]
			preemptible?: bool
			reservation_affinity?: [...close({
				consume_reservation_type?: string
				key?:                      string
				values?: [...string]
			})]
			resource_labels?: [string]:       string
			resource_manager_tags?: [string]: string
			secondary_boot_disks?: [...close({
				disk_image?: string
				mode?:       string
			})]
			service_account?: string
			shielded_instance_config?: [...close({
				enable_integrity_monitoring?: bool
				enable_secure_boot?:          bool
			})]
			sole_tenant_config?: [...close({
				min_node_cpus?: number
				node_affinity?: [...close({
					key?:      string
					operator?: string
					values?: [...string]
				})]
			})]
			spot?: bool
			storage_pools?: [...string]
			tags?: [...string]
			taint?: [...close({
				effect?: string
				key?:    string
				value?:  string
			})]
			windows_node_config?: [...close({
				osversion?: string
			})]
			workload_metadata_config?: [...close({
				mode?: string
			})]
		})]

		// The list of zones in which the cluster's nodes are located.
		// Nodes must be in the region of their regional cluster or in
		// the same region as their cluster's zone for zonal clusters. If
		// this is specified for a zonal cluster, omit the cluster's
		// zone.
		node_locations?: [...string]

		// List of node pools associated with this cluster. See
		// google_container_node_pool for schema. Warning: node pools
		// defined inside a cluster can't be changed (or added/removed)
		// after cluster creation without deleting and recreating the
		// entire cluster. Unless you absolutely need the ability to say
		// "these are the only node pools associated with this cluster",
		// use the google_container_node_pool resource instead of this
		// property.
		node_pool?: [...close({
			autoscaling?: [...close({
				location_policy?:      string
				max_node_count?:       number
				min_node_count?:       number
				total_max_node_count?: number
				total_min_node_count?: number
			})]
			initial_node_count?: number
			instance_group_urls?: [...string]
			managed_instance_group_urls?: [...string]
			management?: [...close({
				auto_repair?:  bool
				auto_upgrade?: bool
			})]
			max_pods_per_node?: number
			name?:              string
			name_prefix?:       string
			network_config?: [...close({
				additional_node_network_configs?: [...close({
					network?:    string
					subnetwork?: string
				})]
				additional_pod_network_configs?: [...close({
					max_pods_per_node?:   number
					secondary_pod_range?: string
					subnetwork?:          string
				})]
				create_pod_range?:     bool
				enable_private_nodes?: bool
				network_performance_config?: [...close({
					total_egress_bandwidth_tier?: string
				})]
				pod_cidr_overprovision_config?: [...close({
					disabled?: bool
				})]
				pod_ipv4_cidr_block?: string
				pod_range?:           string
				subnetwork?:          string
			})]
			node_config?: [...close({
				advanced_machine_features?: [...close({
					enable_nested_virtualization?: bool
					performance_monitoring_unit?:  string
					threads_per_core?:             number
				})]
				boot_disk?: [...close({
					disk_type?:              string
					provisioned_iops?:       number
					provisioned_throughput?: number
					size_gb?:                number
				})]
				boot_disk_kms_key?: string
				confidential_nodes?: [...close({
					confidential_instance_type?: string
					enabled?:                    bool
				})]
				containerd_config?: [...close({
					private_registry_access_config?: [...close({
						certificate_authority_domain_config?: [...close({
							fqdns?: [...string]
							gcp_secret_manager_certificate_config?: [...close({
								secret_uri?: string
							})]
						})]
						enabled?: bool
					})]
				})]
				disk_size_gb?: number
				disk_type?:    string
				effective_taints?: [...close({
					effect?: string
					key?:    string
					value?:  string
				})]
				enable_confidential_storage?: bool
				ephemeral_storage_local_ssd_config?: [...close({
					data_cache_count?: number
					local_ssd_count?:  number
				})]
				fast_socket?: [...close({
					enabled?: bool
				})]
				flex_start?: bool
				gcfs_config?: [...close({
					enabled?: bool
				})]
				guest_accelerator?: [...close({
					count?: number
					gpu_driver_installation_config?: [...close({
						gpu_driver_version?: string
					})]
					gpu_partition_size?: string
					gpu_sharing_config?: [...close({
						gpu_sharing_strategy?:       string
						max_shared_clients_per_gpu?: number
					})]
					type?: string
				})]
				gvnic?: [...close({
					enabled?: bool
				})]
				host_maintenance_policy?: [...close({
					maintenance_interval?: string
				})]
				image_type?: string
				kubelet_config?: [...close({
					allowed_unsafe_sysctls?: [...string]
					container_log_max_files?:               number
					container_log_max_size?:                string
					cpu_cfs_quota?:                         bool
					cpu_cfs_quota_period?:                  string
					cpu_manager_policy?:                    string
					eviction_max_pod_grace_period_seconds?: number
					eviction_minimum_reclaim?: [...close({
						imagefs_available?:   string
						imagefs_inodes_free?: string
						memory_available?:    string
						nodefs_available?:    string
						nodefs_inodes_free?:  string
						pid_available?:       string
					})]
					eviction_soft?: [...close({
						imagefs_available?:   string
						imagefs_inodes_free?: string
						memory_available?:    string
						nodefs_available?:    string
						nodefs_inodes_free?:  string
						pid_available?:       string
					})]
					eviction_soft_grace_period?: [...close({
						imagefs_available?:   string
						imagefs_inodes_free?: string
						memory_available?:    string
						nodefs_available?:    string
						nodefs_inodes_free?:  string
						pid_available?:       string
					})]
					image_gc_high_threshold_percent?:        number
					image_gc_low_threshold_percent?:         number
					image_maximum_gc_age?:                   string
					image_minimum_gc_age?:                   string
					insecure_kubelet_readonly_port_enabled?: string
					max_parallel_image_pulls?:               number
					memory_manager?: [...close({
						policy?: string
					})]
					pod_pids_limit?:          number
					single_process_oom_kill?: bool
					topology_manager?: [...close({
						policy?: string
						scope?:  string
					})]
				})]
				labels?: [string]: string
				linux_node_config?: [...close({
					cgroup_mode?: string
					hugepages_config?: [...close({
						hugepage_size_1g?: number
						hugepage_size_2m?: number
					})]
					sysctls?: [string]: string
					transparent_hugepage_defrag?:  string
					transparent_hugepage_enabled?: string
				})]
				local_nvme_ssd_block_config?: [...close({
					local_ssd_count?: number
				})]
				local_ssd_count?:           number
				local_ssd_encryption_mode?: string
				logging_variant?:           string
				machine_type?:              string
				max_run_duration?:          string
				metadata?: [string]: string
				min_cpu_platform?: string
				node_group?:       string
				oauth_scopes?: [...string]
				preemptible?: bool
				reservation_affinity?: [...close({
					consume_reservation_type?: string
					key?:                      string
					values?: [...string]
				})]
				resource_labels?: [string]:       string
				resource_manager_tags?: [string]: string
				secondary_boot_disks?: [...close({
					disk_image?: string
					mode?:       string
				})]
				service_account?: string
				shielded_instance_config?: [...close({
					enable_integrity_monitoring?: bool
					enable_secure_boot?:          bool
				})]
				sole_tenant_config?: [...close({
					min_node_cpus?: number
					node_affinity?: [...close({
						key?:      string
						operator?: string
						values?: [...string]
					})]
				})]
				spot?: bool
				storage_pools?: [...string]
				tags?: [...string]
				taint?: [...close({
					effect?: string
					key?:    string
					value?:  string
				})]
				windows_node_config?: [...close({
					osversion?: string
				})]
				workload_metadata_config?: [...close({
					mode?: string
				})]
			})]
			node_count?: number
			node_locations?: [...string]
			placement_policy?: [...close({
				policy_name?:  string
				tpu_topology?: string
				type?:         string
			})]
			queued_provisioning?: [...close({
				enabled?: bool
			})]
			upgrade_settings?: [...close({
				blue_green_settings?: [...close({
					node_pool_soak_duration?: string
					standard_rollout_policy?: [...close({
						batch_node_count?:    number
						batch_percentage?:    number
						batch_soak_duration?: string
					})]
				})]
				max_surge?:       number
				max_unavailable?: number
				strategy?:        string
			})]
			version?: string
		})]

		// Node pool configs that apply to all auto-provisioned node pools
		// in autopilot clusters and node auto-provisioning enabled
		// clusters.
		node_pool_auto_config?: [...close({
			linux_node_config?: [...close({
				cgroup_mode?: string
			})]
			network_tags?: [...close({
				tags?: [...string]
			})]
			node_kubelet_config?: [...close({
				insecure_kubelet_readonly_port_enabled?: string
			})]
			resource_manager_tags?: [string]: string
		})]

		// The default nodel pool settings for the entire cluster.
		node_pool_defaults?: [...close({
			node_config_defaults?: [...close({
				containerd_config?: [...close({
					private_registry_access_config?: [...close({
						certificate_authority_domain_config?: [...close({
							fqdns?: [...string]
							gcp_secret_manager_certificate_config?: [...close({
								secret_uri?: string
							})]
						})]
						enabled?: bool
					})]
				})]
				gcfs_config?: [...close({
					enabled?: bool
				})]
				insecure_kubelet_readonly_port_enabled?: string
				logging_variant?:                        string
			})]
		})]

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

		// The notification config for sending cluster upgrade
		// notifications
		notification_config?: [...close({
			pubsub?: [...close({
				enabled?: bool
				filter?: [...close({
					event_type?: [...string]
				})]
				topic?: string
			})]
		})]
		operation?: string

		// PodAutoscaling is used for configuration of parameters for
		// workload autoscaling
		pod_autoscaling?: [...close({
			hpa_profile?: string
		})]

		// Configuration for private clusters, clusters with private
		// nodes.
		private_cluster_config?: [...close({
			enable_private_endpoint?: bool
			enable_private_nodes?:    bool
			master_global_access_config?: [...close({
				enabled?: bool
			})]
			master_ipv4_cidr_block?:      string
			peering_name?:                string
			private_endpoint?:            string
			private_endpoint_subnetwork?: string
			public_endpoint?:             string
		})]

		// The desired state of IPv6 connectivity to Google Services. By
		// default, no private IPv6 access to or from Google Services
		// (all access will be via IPv4).
		private_ipv6_google_access?: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// RBACBindingConfig allows user to restrict ClusterRoleBindings
		// an RoleBindings that can be created.
		rbac_binding_config?: [...close({
			enable_insecure_binding_system_authenticated?:   bool
			enable_insecure_binding_system_unauthenticated?: bool
		})]

		// Configuration options for the Release channel feature, which
		// provide more control over automatic upgrades of your GKE
		// clusters. Note that removing this field from your config will
		// not unenroll it. Instead, use the "UNSPECIFIED" channel.
		release_channel?: [...close({
			channel?: string
		})]

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

		// Configuration for the ResourceUsageExportConfig feature.
		resource_usage_export_config?: [...close({
			bigquery_destination?: [...close({
				dataset_id?: string
			})]
			enable_network_egress_metering?:       bool
			enable_resource_consumption_metering?: bool
		})]

		// Configuration for the Secret Manager feature.
		secret_manager_config?: [...close({
			enabled?: bool
			rotation_config?: [...close({
				enabled?:           bool
				rotation_interval?: string
			})]
		})]

		// Defines the config needed to enable/disable features for the
		// Security Posture API
		security_posture_config?: [...close({
			mode?:               string
			vulnerability_mode?: string
		})]

		// Server-defined URL for the resource.
		self_link?: string

		// If set, and enabled=true, services with external ips field will
		// not be blocked
		service_external_ips_config?: [...close({
			enabled?: bool
		})]

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

		// The custom keys configuration of the cluster.
		user_managed_keys_config?: [...close({
			aggregation_ca?:                    string
			cluster_ca?:                        string
			control_plane_disk_encryption_key?: string
			etcd_api_ca?:                       string
			etcd_peer_ca?:                      string
			gkeops_etcd_backup_encryption_key?: string
			service_account_signing_keys?: [...string]
			service_account_verification_keys?: [...string]
		})]

		// Vertical Pod Autoscaling automatically adjusts the resources of
		// pods controlled by it.
		vertical_pod_autoscaling?: [...close({
			enabled?: bool
		})]

		// Configuration for the use of Kubernetes Service Accounts in GCP
		// IAM policies.
		workload_identity_config?: [...close({
			workload_pool?: string
		})]
	})
}
