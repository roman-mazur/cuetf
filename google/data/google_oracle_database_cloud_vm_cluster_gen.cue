package data

#google_oracle_database_cloud_vm_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_cloud_vm_cluster")
	close({
		// The name of the backup OdbSubnet associated with the VM
		// Cluster.
		// Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
		backup_odb_subnet?: string

		// CIDR range of the backup subnet.
		backup_subnet_cidr?: string

		// Network settings. CIDR to use for cluster IP allocation.
		cidr?: string

		// The ID of the VM Cluster to create. This value is restricted
		// to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must be a maximum of
		// 63
		// characters in length. The value must start with a letter and
		// end with
		// a letter or a number.
		cloud_vm_cluster_id!: string

		// The date and time that the VM cluster was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// cluster. Deleting this cluster via terraform destroy or
		// terraform apply will only succeed if this field is false in
		// the Terraform state.
		deletion_protection?: bool

		// User friendly name for this resource.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The name of the Exadata Infrastructure resource on which VM
		// cluster
		// resource is created, in the following format:
		// projects/{project}/locations/{region}/cloudExadataInfrastuctures/{cloud_extradata_infrastructure}
		exadata_infrastructure?: string

		// GCP location where Oracle Exadata is hosted. It is same as GCP
		// Oracle zone
		// of Exadata infrastructure.
		gcp_oracle_zone?: string
		id?:              string

		// Labels or tags associated with the VM Cluster.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. See
		// documentation for resource type
		// 'oracledatabase.googleapis.com/DbNode'.
		location!: string

		// Identifier. The name of the VM Cluster resource with the
		// format:
		// projects/{project}/locations/{region}/cloudVmClusters/{cloud_vm_cluster}
		name?: string

		// The name of the VPC network.
		// Format: projects/{project}/global/networks/{network}
		network?: string

		// The name of the OdbNetwork associated with the VM Cluster.
		// Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}
		// It is optional but if specified, this should match the parent
		// ODBNetwork of
		// the odb_subnet and backup_odb_subnet.
		odb_network?: string

		// The name of the OdbSubnet associated with the VM Cluster for
		// IP allocation. Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
		odb_subnet?: string
		project?:    string

		// Various properties and settings associated with Exadata VM
		// cluster.
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

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})
}
