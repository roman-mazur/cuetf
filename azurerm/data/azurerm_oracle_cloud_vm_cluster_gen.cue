package data

#azurerm_oracle_cloud_vm_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_oracle_cloud_vm_cluster")
	close({
		backup_subnet_cidr?:              string
		cloud_exadata_infrastructure_id?: string
		cluster_name?:                    string
		compartment_id?:                  string
		compute_model?:                   string
		compute_nodes?: [...string]
		cpu_core_count?: number
		data_collection_options?: [...close({
			diagnostics_events_enabled?: bool
			health_monitoring_enabled?:  bool
			incident_logs_enabled?:      bool
		})]
		data_storage_percentage?:     number
		data_storage_size_in_tbs?:    number
		db_node_storage_size_in_gbs?: number
		db_servers?: [...string]
		disk_redundancy?: string
		display_name?:    string
		domain?:          string
		file_system_configuration?: [...close({
			mount_point?: string
			size_in_gb?:  number
		})]
		gi_version?:      string
		hostname?:        string
		hostname_actual?: string
		id?:              string
		iorm_config_cache?: [...close({
			db_plans?: [...close({
				db_name?:           string
				flash_cache_limit?: string
				share?:             number
			})]
			lifecycle_details?: string
			lifecycle_state?:   string
			objective?:         string
		})]
		last_update_history_entry_id?: string
		license_model?:                string
		lifecycle_details?:            string
		lifecycle_state?:              string
		listener_port?:                number
		local_backup_enabled?:         bool
		location?:                     string
		memory_size_in_gbs?:           number
		name!:                         string
		node_count?:                   number
		nsg_url?:                      string
		oci_url?:                      string
		ocid?:                         string
		ocpu_count?:                   number
		resource_group_name!:          string
		scan_dns_name?:                string
		timeouts?:                     #timeouts
		scan_dns_record_id?:           string
		scan_ip_ids?: [...string]
		scan_listener_port_tcp?:     number
		scan_listener_port_tcp_ssl?: number
		shape?:                      string
		sparse_diskgroup_enabled?:   bool
		ssh_public_keys?: [...string]
		storage_size_in_gbs?: number
		subnet_id?:           string
		subnet_ocid?:         string
		system_version?:      string
		tags?: [string]: string
		time_created?: string
		time_zone?:    string
		vip_ods?: [...string]
		virtual_network_id?: string
		zone_id?:            string
	})

	#timeouts: close({
		read?: string
	})
}
