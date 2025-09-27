package res

import "list"

#azurerm_kubernetes_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kubernetes_cluster")
	close({
		automatic_upgrade_channel?:  string
		azure_policy_enabled?:       bool
		cost_analysis_enabled?:      bool
		current_kubernetes_version?: string
		custom_ca_trust_certificates_base64?: [...string]
		disk_encryption_set_id?:     string
		dns_prefix?:                 string
		dns_prefix_private_cluster?: string
		edge_zone?:                  string
		fqdn?:                       string
		aci_connector_linux?: matchN(1, [#aci_connector_linux, list.MaxItems(1) & [...#aci_connector_linux]])
		http_application_routing_enabled?:   bool
		http_application_routing_zone_name?: string
		id?:                                 string
		image_cleaner_enabled?:              bool
		image_cleaner_interval_hours?:       number
		kube_admin_config?: [...close({
			client_certificate?:     string
			client_key?:             string
			cluster_ca_certificate?: string
			host?:                   string
			password?:               string
			username?:               string
		})]
		kube_admin_config_raw?: string
		kube_config?: [...close({
			client_certificate?:     string
			client_key?:             string
			cluster_ca_certificate?: string
			host?:                   string
			password?:               string
			username?:               string
		})]
		kube_config_raw?:         string
		kubernetes_version?:      string
		local_account_disabled?:  bool
		location!:                string
		name!:                    string
		node_os_upgrade_channel?: string
		node_resource_group?:     string
		api_server_access_profile?: matchN(1, [#api_server_access_profile, list.MaxItems(1) & [...#api_server_access_profile]])
		node_resource_group_id?:              string
		oidc_issuer_enabled?:                 bool
		oidc_issuer_url?:                     string
		open_service_mesh_enabled?:           bool
		portal_fqdn?:                         string
		private_cluster_enabled?:             bool
		private_cluster_public_fqdn_enabled?: bool
		private_dns_zone_id?:                 string
		private_fqdn?:                        string
		resource_group_name!:                 string
		role_based_access_control_enabled?:   bool
		run_command_enabled?:                 bool
		sku_tier?:                            string
		support_plan?:                        string
		tags?: [string]: string
		auto_scaler_profile?: matchN(1, [#auto_scaler_profile, list.MaxItems(1) & [...#auto_scaler_profile]])
		azure_active_directory_role_based_access_control?: matchN(1, [#azure_active_directory_role_based_access_control, list.MaxItems(1) & [...#azure_active_directory_role_based_access_control]])
		bootstrap_profile?: matchN(1, [#bootstrap_profile, list.MaxItems(1) & [...#bootstrap_profile]])
		confidential_computing?: matchN(1, [#confidential_computing, list.MaxItems(1) & [...#confidential_computing]])
		default_node_pool?: matchN(1, [#default_node_pool, list.MaxItems(1) & [_, ...] & [...#default_node_pool]])
		http_proxy_config?: matchN(1, [#http_proxy_config, list.MaxItems(1) & [...#http_proxy_config]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		ingress_application_gateway?: matchN(1, [#ingress_application_gateway, list.MaxItems(1) & [...#ingress_application_gateway]])
		key_management_service?: matchN(1, [#key_management_service, list.MaxItems(1) & [...#key_management_service]])
		key_vault_secrets_provider?: matchN(1, [#key_vault_secrets_provider, list.MaxItems(1) & [...#key_vault_secrets_provider]])
		kubelet_identity?: matchN(1, [#kubelet_identity, list.MaxItems(1) & [...#kubelet_identity]])
		linux_profile?: matchN(1, [#linux_profile, list.MaxItems(1) & [...#linux_profile]])
		maintenance_window?: matchN(1, [#maintenance_window, list.MaxItems(1) & [...#maintenance_window]])
		maintenance_window_auto_upgrade?: matchN(1, [#maintenance_window_auto_upgrade, list.MaxItems(1) & [...#maintenance_window_auto_upgrade]])
		maintenance_window_node_os?: matchN(1, [#maintenance_window_node_os, list.MaxItems(1) & [...#maintenance_window_node_os]])
		microsoft_defender?: matchN(1, [#microsoft_defender, list.MaxItems(1) & [...#microsoft_defender]])
		workload_identity_enabled?: bool
		monitor_metrics?: matchN(1, [#monitor_metrics, list.MaxItems(1) & [...#monitor_metrics]])
		network_profile?: matchN(1, [#network_profile, list.MaxItems(1) & [...#network_profile]])
		oms_agent?: matchN(1, [#oms_agent, list.MaxItems(1) & [...#oms_agent]])
		service_mesh_profile?: matchN(1, [#service_mesh_profile, list.MaxItems(1) & [...#service_mesh_profile]])
		service_principal?: matchN(1, [#service_principal, list.MaxItems(1) & [...#service_principal]])
		storage_profile?: matchN(1, [#storage_profile, list.MaxItems(1) & [...#storage_profile]])
		timeouts?: #timeouts
		upgrade_override?: matchN(1, [#upgrade_override, list.MaxItems(1) & [...#upgrade_override]])
		web_app_routing?: matchN(1, [#web_app_routing, list.MaxItems(1) & [...#web_app_routing]])
		windows_profile?: matchN(1, [#windows_profile, list.MaxItems(1) & [...#windows_profile]])
		workload_autoscaler_profile?: matchN(1, [#workload_autoscaler_profile, list.MaxItems(1) & [...#workload_autoscaler_profile]])
	})

	#aci_connector_linux: close({
		connector_identity?: [...close({
			client_id?:                 string
			object_id?:                 string
			user_assigned_identity_id?: string
		})]
		subnet_name!: string
	})

	#api_server_access_profile: close({
		authorized_ip_ranges?: [...string]
		subnet_id?:                           string
		virtual_network_integration_enabled?: bool
	})

	#auto_scaler_profile: close({
		balance_similar_node_groups?:                   bool
		daemonset_eviction_for_empty_nodes_enabled?:    bool
		daemonset_eviction_for_occupied_nodes_enabled?: bool
		empty_bulk_delete_max?:                         string
		expander?:                                      string
		ignore_daemonsets_utilization_enabled?:         bool
		max_graceful_termination_sec?:                  string
		max_node_provisioning_time?:                    string
		max_unready_nodes?:                             number
		max_unready_percentage?:                        number
		new_pod_scale_up_delay?:                        string
		scale_down_delay_after_add?:                    string
		scale_down_delay_after_delete?:                 string
		scale_down_delay_after_failure?:                string
		scale_down_unneeded?:                           string
		scale_down_unready?:                            string
		scale_down_utilization_threshold?:              string
		scan_interval?:                                 string
		skip_nodes_with_local_storage?:                 bool
		skip_nodes_with_system_pods?:                   bool
	})

	#azure_active_directory_role_based_access_control: close({
		admin_group_object_ids?: [...string]
		azure_rbac_enabled?: bool
		tenant_id?:          string
	})

	#bootstrap_profile: close({
		artifact_source?:       string
		container_registry_id?: string
	})

	#confidential_computing: close({
		sgx_quote_helper_enabled!: bool
	})

	#default_node_pool: close({
		auto_scaling_enabled?:          bool
		capacity_reservation_group_id?: string
		fips_enabled?:                  bool
		gpu_driver?:                    string
		gpu_instance?:                  string
		host_encryption_enabled?:       bool
		host_group_id?:                 string
		kubelet_disk_type?:             string
		max_count?:                     number
		kubelet_config?: matchN(1, [_#defs."/$defs/default_node_pool/$defs/kubelet_config", list.MaxItems(1) & [..._#defs."/$defs/default_node_pool/$defs/kubelet_config"]])
		max_pods?:   number
		min_count?:  number
		name!:       string
		node_count?: number
		node_labels?: [string]: string
		node_public_ip_enabled?:       bool
		node_public_ip_prefix_id?:     string
		only_critical_addons_enabled?: bool
		orchestrator_version?:         string
		linux_os_config?: matchN(1, [_#defs."/$defs/default_node_pool/$defs/linux_os_config", list.MaxItems(1) & [..._#defs."/$defs/default_node_pool/$defs/linux_os_config"]])
		os_disk_size_gb?: number
		node_network_profile?: matchN(1, [_#defs."/$defs/default_node_pool/$defs/node_network_profile", list.MaxItems(1) & [..._#defs."/$defs/default_node_pool/$defs/node_network_profile"]])
		os_disk_type?:                 string
		os_sku?:                       string
		pod_subnet_id?:                string
		proximity_placement_group_id?: string
		scale_down_mode?:              string
		snapshot_id?:                  string
		tags?: [string]: string
		temporary_name_for_rotation?: string
		type?:                        string
		ultra_ssd_enabled?:           bool
		vm_size?:                     string
		vnet_subnet_id?:              string
		workload_runtime?:            string
		zones?: [...string]
		upgrade_settings?: matchN(1, [_#defs."/$defs/default_node_pool/$defs/upgrade_settings", list.MaxItems(1) & [..._#defs."/$defs/default_node_pool/$defs/upgrade_settings"]])
	})

	#http_proxy_config: close({
		http_proxy?:  string
		https_proxy?: string
		no_proxy?: [...string]
		trusted_ca?: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#ingress_application_gateway: close({
		effective_gateway_id?: string
		gateway_id?:           string
		gateway_name?:         string
		ingress_application_gateway_identity?: [...close({
			client_id?:                 string
			object_id?:                 string
			user_assigned_identity_id?: string
		})]
		subnet_cidr?: string
		subnet_id?:   string
	})

	#key_management_service: close({
		key_vault_key_id!:         string
		key_vault_network_access?: string
	})

	#key_vault_secrets_provider: close({
		secret_identity?: [...close({
			client_id?:                 string
			object_id?:                 string
			user_assigned_identity_id?: string
		})]
		secret_rotation_enabled?:  bool
		secret_rotation_interval?: string
	})

	#kubelet_identity: close({
		client_id?:                 string
		object_id?:                 string
		user_assigned_identity_id?: string
	})

	#linux_profile: close({
		ssh_key?: matchN(1, [_#defs."/$defs/linux_profile/$defs/ssh_key", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/linux_profile/$defs/ssh_key"]])
		admin_username!: string
	})

	#maintenance_window: close({
		allowed?: matchN(1, [_#defs."/$defs/maintenance_window/$defs/allowed", [..._#defs."/$defs/maintenance_window/$defs/allowed"]])
		not_allowed?: matchN(1, [_#defs."/$defs/maintenance_window/$defs/not_allowed", [..._#defs."/$defs/maintenance_window/$defs/not_allowed"]])
	})

	#maintenance_window_auto_upgrade: close({
		not_allowed?: matchN(1, [_#defs."/$defs/maintenance_window_auto_upgrade/$defs/not_allowed", [..._#defs."/$defs/maintenance_window_auto_upgrade/$defs/not_allowed"]])
		day_of_month?: number
		day_of_week?:  string
		duration!:     number
		frequency!:    string
		interval!:     number
		start_date?:   string
		start_time?:   string
		utc_offset?:   string
		week_index?:   string
	})

	#maintenance_window_node_os: close({
		not_allowed?: matchN(1, [_#defs."/$defs/maintenance_window_node_os/$defs/not_allowed", [..._#defs."/$defs/maintenance_window_node_os/$defs/not_allowed"]])
		day_of_month?: number
		day_of_week?:  string
		duration!:     number
		frequency!:    string
		interval!:     number
		start_date?:   string
		start_time?:   string
		utc_offset?:   string
		week_index?:   string
	})

	#microsoft_defender: close({
		log_analytics_workspace_id!: string
	})

	#monitor_metrics: close({
		annotations_allowed?: string
		labels_allowed?:      string
	})

	#network_profile: close({
		dns_service_ip?: string
		advanced_networking?: matchN(1, [_#defs."/$defs/network_profile/$defs/advanced_networking", list.MaxItems(1) & [..._#defs."/$defs/network_profile/$defs/advanced_networking"]])
		ip_versions?: [...string]
		load_balancer_sku?:   string
		network_data_plane?:  string
		network_mode?:        string
		network_plugin!:      string
		network_plugin_mode?: string
		load_balancer_profile?: matchN(1, [_#defs."/$defs/network_profile/$defs/load_balancer_profile", list.MaxItems(1) & [..._#defs."/$defs/network_profile/$defs/load_balancer_profile"]])
		network_policy?: string
		outbound_type?:  string
		pod_cidr?:       string
		pod_cidrs?: [...string]
		service_cidr?: string
		service_cidrs?: [...string]
		nat_gateway_profile?: matchN(1, [_#defs."/$defs/network_profile/$defs/nat_gateway_profile", list.MaxItems(1) & [..._#defs."/$defs/network_profile/$defs/nat_gateway_profile"]])
	})

	#oms_agent: close({
		log_analytics_workspace_id!:      string
		msi_auth_for_monitoring_enabled?: bool
		oms_agent_identity?: [...close({
			client_id?:                 string
			object_id?:                 string
			user_assigned_identity_id?: string
		})]
	})

	#service_mesh_profile: close({
		certificate_authority?: matchN(1, [_#defs."/$defs/service_mesh_profile/$defs/certificate_authority", list.MaxItems(1) & [..._#defs."/$defs/service_mesh_profile/$defs/certificate_authority"]])
		external_ingress_gateway_enabled?: bool
		internal_ingress_gateway_enabled?: bool
		mode!:                             string
		revisions!: [...string]
	})

	#service_principal: close({
		client_id!:     string
		client_secret!: string
	})

	#storage_profile: close({
		blob_driver_enabled?:         bool
		disk_driver_enabled?:         bool
		file_driver_enabled?:         bool
		snapshot_controller_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#upgrade_override: close({
		effective_until?:       string
		force_upgrade_enabled!: bool
	})

	#web_app_routing: close({
		default_nginx_controller?: string
		dns_zone_ids!: [...string]
		web_app_routing_identity?: [...close({
			client_id?:                 string
			object_id?:                 string
			user_assigned_identity_id?: string
		})]
	})

	#windows_profile: close({
		gmsa?: matchN(1, [_#defs."/$defs/windows_profile/$defs/gmsa", list.MaxItems(1) & [..._#defs."/$defs/windows_profile/$defs/gmsa"]])
		admin_password!: string
		admin_username!: string
		license?:        string
	})

	#workload_autoscaler_profile: close({
		keda_enabled?:                    bool
		vertical_pod_autoscaler_enabled?: bool
	})

	_#defs: "/$defs/default_node_pool/$defs/kubelet_config": close({
		allowed_unsafe_sysctls?: [...string]
		container_log_max_line?:    number
		container_log_max_size_mb?: number
		cpu_cfs_quota_enabled?:     bool
		cpu_cfs_quota_period?:      string
		cpu_manager_policy?:        string
		image_gc_high_threshold?:   number
		image_gc_low_threshold?:    number
		pod_max_pid?:               number
		topology_manager_policy?:   string
	})

	_#defs: "/$defs/default_node_pool/$defs/linux_os_config": close({
		sysctl_config?: matchN(1, [_#defs."/$defs/default_node_pool/$defs/linux_os_config/$defs/sysctl_config", list.MaxItems(1) & [..._#defs."/$defs/default_node_pool/$defs/linux_os_config/$defs/sysctl_config"]])
		swap_file_size_mb?:            number
		transparent_huge_page?:        string
		transparent_huge_page_defrag?: string
	})

	_#defs: "/$defs/default_node_pool/$defs/linux_os_config/$defs/sysctl_config": close({
		fs_aio_max_nr?:                      number
		fs_file_max?:                        number
		fs_inotify_max_user_watches?:        number
		fs_nr_open?:                         number
		kernel_threads_max?:                 number
		net_core_netdev_max_backlog?:        number
		net_core_optmem_max?:                number
		net_core_rmem_default?:              number
		net_core_rmem_max?:                  number
		net_core_somaxconn?:                 number
		net_core_wmem_default?:              number
		net_core_wmem_max?:                  number
		net_ipv4_ip_local_port_range_max?:   number
		net_ipv4_ip_local_port_range_min?:   number
		net_ipv4_neigh_default_gc_thresh1?:  number
		net_ipv4_neigh_default_gc_thresh2?:  number
		net_ipv4_neigh_default_gc_thresh3?:  number
		net_ipv4_tcp_fin_timeout?:           number
		net_ipv4_tcp_keepalive_intvl?:       number
		net_ipv4_tcp_keepalive_probes?:      number
		net_ipv4_tcp_keepalive_time?:        number
		net_ipv4_tcp_max_syn_backlog?:       number
		net_ipv4_tcp_max_tw_buckets?:        number
		net_ipv4_tcp_tw_reuse?:              bool
		net_netfilter_nf_conntrack_buckets?: number
		net_netfilter_nf_conntrack_max?:     number
		vm_max_map_count?:                   number
		vm_swappiness?:                      number
		vm_vfs_cache_pressure?:              number
	})

	_#defs: "/$defs/default_node_pool/$defs/node_network_profile": close({
		allowed_host_ports?: matchN(1, [_#defs."/$defs/default_node_pool/$defs/node_network_profile/$defs/allowed_host_ports", [..._#defs."/$defs/default_node_pool/$defs/node_network_profile/$defs/allowed_host_ports"]])
		application_security_group_ids?: [...string]
		node_public_ip_tags?: [string]: string
	})

	_#defs: "/$defs/default_node_pool/$defs/node_network_profile/$defs/allowed_host_ports": close({
		port_end?:   number
		port_start?: number
		protocol?:   string
	})

	_#defs: "/$defs/default_node_pool/$defs/upgrade_settings": close({
		drain_timeout_in_minutes?:      number
		max_surge!:                     string
		node_soak_duration_in_minutes?: number
	})

	_#defs: "/$defs/linux_profile/$defs/ssh_key": close({
		key_data!: string
	})

	_#defs: "/$defs/maintenance_window/$defs/allowed": close({
		day!: string
		hours!: [...number]
	})

	_#defs: "/$defs/maintenance_window/$defs/not_allowed": close({
		end!:   string
		start!: string
	})

	_#defs: "/$defs/maintenance_window_auto_upgrade/$defs/not_allowed": close({
		end!:   string
		start!: string
	})

	_#defs: "/$defs/maintenance_window_node_os/$defs/not_allowed": close({
		end!:   string
		start!: string
	})

	_#defs: "/$defs/network_profile/$defs/advanced_networking": close({
		observability_enabled?: bool
		security_enabled?:      bool
	})

	_#defs: "/$defs/network_profile/$defs/load_balancer_profile": close({
		backend_pool_type?: string
		effective_outbound_ips?: [...string]
		idle_timeout_in_minutes?:     number
		managed_outbound_ip_count?:   number
		managed_outbound_ipv6_count?: number
		outbound_ip_address_ids?: [...string]
		outbound_ip_prefix_ids?: [...string]
		outbound_ports_allocated?: number
	})

	_#defs: "/$defs/network_profile/$defs/nat_gateway_profile": close({
		effective_outbound_ips?: [...string]
		idle_timeout_in_minutes?:   number
		managed_outbound_ip_count?: number
	})

	_#defs: "/$defs/service_mesh_profile/$defs/certificate_authority": close({
		cert_chain_object_name!: string
		cert_object_name!:       string
		key_object_name!:        string
		key_vault_id!:           string
		root_cert_object_name!:  string
	})

	_#defs: "/$defs/windows_profile/$defs/gmsa": close({
		dns_server!:  string
		root_domain!: string
	})
}
