package res

import "list"

#azurerm_oracle_cloud_vm_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_oracle_cloud_vm_cluster")
	close({
		backup_subnet_cidr?:              string
		cloud_exadata_infrastructure_id!: string
		cluster_name?:                    string
		cpu_core_count!:                  number
		data_storage_percentage?:         number
		data_storage_size_in_tbs?:        number
		db_node_storage_size_in_gbs?:     number
		db_servers!: [...string]
		display_name!: string
		domain?:       string
		gi_version!:   string
		hostname!:     string
		data_collection_options?: matchN(1, [#data_collection_options, list.MaxItems(1) & [...#data_collection_options]])
		hostname_actual?:            string
		id?:                         string
		license_model!:              string
		local_backup_enabled?:       bool
		location!:                   string
		memory_size_in_gbs?:         number
		name!:                       string
		ocid?:                       string
		resource_group_name!:        string
		scan_listener_port_tcp?:     number
		scan_listener_port_tcp_ssl?: number
		sparse_diskgroup_enabled?:   bool
		ssh_public_keys!: [...string]
		subnet_id!:      string
		system_version?: string
		tags?: [string]: string
		time_zone?:          string
		virtual_network_id!: string
		file_system_configuration?: matchN(1, [#file_system_configuration, [...#file_system_configuration]])
		zone_id?:  string
		timeouts?: #timeouts
	})

	#data_collection_options: close({
		diagnostics_events_enabled?: bool
		health_monitoring_enabled?:  bool
		incident_logs_enabled?:      bool
	})

	#file_system_configuration: close({
		mount_point?: string
		size_in_gb?:  number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
