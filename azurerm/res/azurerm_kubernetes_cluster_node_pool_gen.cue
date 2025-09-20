package res

import "list"

#azurerm_kubernetes_cluster_node_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kubernetes_cluster_node_pool")
	close({
		auto_scaling_enabled?:          bool
		capacity_reservation_group_id?: string
		eviction_policy?:               string
		fips_enabled?:                  bool
		gpu_driver?:                    string
		gpu_instance?:                  string
		host_encryption_enabled?:       bool
		host_group_id?:                 string
		id?:                            string
		kubelet_disk_type?:             string
		kubernetes_cluster_id!:         string
		max_count?:                     number
		max_pods?:                      number
		min_count?:                     number
		mode?:                          string
		name!:                          string
		node_count?:                    number
		kubelet_config?: matchN(1, [#kubelet_config, list.MaxItems(1) & [...#kubelet_config]])
		node_labels?: [string]: string
		node_public_ip_enabled?:   bool
		node_public_ip_prefix_id?: string
		node_taints?: [...string]
		linux_os_config?: matchN(1, [#linux_os_config, list.MaxItems(1) & [...#linux_os_config]])
		node_network_profile?: matchN(1, [#node_network_profile, list.MaxItems(1) & [...#node_network_profile]])
		orchestrator_version?:         string
		os_disk_size_gb?:              number
		os_disk_type?:                 string
		timeouts?:                     #timeouts
		os_sku?:                       string
		os_type?:                      string
		pod_subnet_id?:                string
		priority?:                     string
		proximity_placement_group_id?: string
		scale_down_mode?:              string
		snapshot_id?:                  string
		spot_max_price?:               number
		tags?: [string]: string
		temporary_name_for_rotation?: string
		ultra_ssd_enabled?:           bool
		vm_size?:                     string
		upgrade_settings?: matchN(1, [#upgrade_settings, list.MaxItems(1) & [...#upgrade_settings]])
		vnet_subnet_id?: string
		windows_profile?: matchN(1, [#windows_profile, list.MaxItems(1) & [...#windows_profile]])
		workload_runtime?: string
		zones?: [...string]
	})

	#kubelet_config: close({
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

	#linux_os_config: close({
		sysctl_config?: matchN(1, [_#defs."/$defs/linux_os_config/$defs/sysctl_config", list.MaxItems(1) & [..._#defs."/$defs/linux_os_config/$defs/sysctl_config"]])
		swap_file_size_mb?:            number
		transparent_huge_page?:        string
		transparent_huge_page_defrag?: string
	})

	#node_network_profile: close({
		allowed_host_ports?: matchN(1, [_#defs."/$defs/node_network_profile/$defs/allowed_host_ports", [..._#defs."/$defs/node_network_profile/$defs/allowed_host_ports"]])
		application_security_group_ids?: [...string]
		node_public_ip_tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#upgrade_settings: close({
		drain_timeout_in_minutes?:      number
		max_surge!:                     string
		node_soak_duration_in_minutes?: number
	})

	#windows_profile: close({
		outbound_nat_enabled?: bool
	})

	_#defs: "/$defs/linux_os_config/$defs/sysctl_config": close({
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

	_#defs: "/$defs/node_network_profile/$defs/allowed_host_ports": close({
		port_end?:   number
		port_start?: number
		protocol?:   string
	})
}
