package data

#google_oracle_database_cloud_vm_clusters: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_cloud_vm_clusters")
	close({
		cloud_vm_clusters?: [...close({
			backup_odb_subnet?:   string
			backup_subnet_cidr?:  string
			cidr?:                string
			cloud_vm_cluster_id?: string
			create_time?:         string
			deletion_protection?: bool
			display_name?:        string
			effective_labels?: [string]: string
			exadata_infrastructure?: string
			gcp_oracle_zone?:        string
			labels?: [string]: string
			location?:    string
			name?:        string
			network?:     string
			odb_network?: string
			odb_subnet?:  string
			project?:     string
			properties?: [...close({
				cluster_name?:            string
				compartment_id?:          string
				cpu_core_count?:          number
				data_storage_size_tb?:    number
				db_node_storage_size_gb?: number
				db_server_ocids?: [...string]
				diagnostics_data_collection_options?: [...close({
					diagnostics_events_enabled?: bool
					health_monitoring_enabled?:  bool
					incident_logs_enabled?:      bool
				})]
				disk_redundancy?:      string
				dns_listener_ip?:      string
				domain?:               string
				gi_version?:           string
				hostname?:             string
				hostname_prefix?:      string
				license_type?:         string
				local_backup_enabled?: bool
				memory_size_gb?:       number
				node_count?:           number
				oci_url?:              string
				ocid?:                 string
				ocpu_count?:           number
				scan_dns?:             string
				scan_dns_record_id?:   string
				scan_ip_ids?: [...string]
				scan_listener_port_tcp?:     number
				scan_listener_port_tcp_ssl?: number
				shape?:                      string
				sparse_diskgroup_enabled?:   bool
				ssh_public_keys?: [...string]
				state?:           string
				storage_size_gb?: number
				system_version?:  string
				time_zone?: [...close({
					id?: string
				})]
			})]
			terraform_labels?: [string]: string
		})]
		id?: string

		// location
		location!: string

		// The ID of the project in which the dataset is located. If it is
		// not provided, the provider project is used.
		project?: string
	})
}
