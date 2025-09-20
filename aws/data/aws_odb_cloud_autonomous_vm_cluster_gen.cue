package data

#aws_odb_cloud_autonomous_vm_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_odb_cloud_autonomous_vm_cluster")
	close({
		arn?: string

		// The percentage of data storage currently in use for Autonomous
		// Databases in the Autonomous VM cluster.
		autonomous_data_storage_percentage?: number

		// The data storage size allocated for Autonomous Databases in the
		// Autonomous VM cluster, in TB.
		autonomous_data_storage_size_in_tbs?: number

		// The available data storage space for Autonomous Databases in
		// the Autonomous VM cluster, in TB.
		available_autonomous_data_storage_size_in_tbs?: number

		// The number of Autonomous CDBs that you can create with the
		// currently available storage.
		available_container_databases?: number

		// The number of CPU cores available for allocation to Autonomous
		// Databases.
		available_cpus?: number

		// Cloud exadata infrastructure id associated with this cloud
		// autonomous VM cluster.
		cloud_exadata_infrastructure_id?: string

		// The compute model of the Autonomous VM cluster: ECPU or OCPU.
		compute_model?: string

		// The total number of CPU cores in the Autonomous VM cluster.
		cpu_core_count?: number

		// The number of CPU cores enabled per node in the Autonomous VM
		// cluster.
		cpu_core_count_per_node?: number

		// he percentage of total CPU cores currently in use in the
		// Autonomous VM cluster.
		cpu_percentage?: number

		// The date and time when the Autonomous VM cluster was created.
		created_at?: string

		// The total data storage allocated to the Autonomous VM cluster,
		// in GB.
		data_storage_size_in_gbs?: number

		// The total data storage allocated to the Autonomous VM cluster,
		// in TB.
		data_storage_size_in_tbs?: number

		// The list of database servers associated with the Autonomous VM
		// cluster.
		db_servers?: [...string]

		// The user-provided description of the Autonomous VM cluster.
		description?: string

		// The display name of the Autonomous VM cluster.
		display_name?: string

		// The domain name of the Autonomous VM cluster.
		domain?: string

		// The minimum value to which you can scale down the Exadata
		// storage, in TB.
		exadata_storage_in_tbs_lowest_scaled_value?: number

		// The hostname of the Autonomous VM cluster.
		hostname?: string

		// Unique ID of the Autonomous VM cluster.
		id!: string

		// Indicates whether mutual TLS (mTLS) authentication is enabled
		// for the Autonomous VM cluster.
		is_mtls_enabled_vm_cluster?: bool

		// The Oracle license model that applies to the Autonomous VM
		// cluster. Valid values are LICENSE_INCLUDED or
		// BRING_YOUR_OWN_LICENSE .
		license_model?: string

		// The maintenance window for the Autonomous VM cluster.
		maintenance_window?: [...close({
			days_of_week?: [...close({
				name?: string
			})]
			hours_of_day?: [...number]
			lead_time_in_weeks?: number
			months?: [...close({
				name?: string
			})]
			preference?: string
			weeks_of_month?: [...number]
		})]

		// The minimum value to which you can scale down the maximum
		// number of Autonomous CDBs.
		max_acds_lowest_scaled_value?: number

		// The amount of memory allocated per Oracle Compute Unit, in GB.
		memory_per_oracle_compute_unit_in_gbs?: number

		// The total amount of memory allocated to the Autonomous VM
		// cluster, in gigabytes (GB).
		memory_size_in_gbs?: number

		// The number of database server nodes in the Autonomous VM
		// cluster.
		node_count?: number

		// The number of Autonomous CDBs that can't be provisioned because
		// of resource constraints.
		non_provisionable_autonomous_container_databases?: number

		// The name of the OCI resource anchor associated with this
		// Autonomous VM cluster.
		oci_resource_anchor_name?: string

		// The URL for accessing the OCI console page for this Autonomous
		// VM cluster.
		oci_url?: string

		// The Oracle Cloud Identifier (OCID) of the Autonomous VM
		// cluster.
		ocid?: string

		// The unique identifier of the ODB network associated with this
		// Autonomous VM cluster.
		odb_network_id?: string

		// The local node storage allocated to the Autonomous VM cluster,
		// in gigabytes (GB).
		odb_node_storage_size_in_gbs?: number

		// The progress of the current operation on the Autonomous VM
		// cluster, as a percentage.
		percent_progress?: number

		// The number of Autonomous CDBs that can be provisioned in the
		// Autonomous VM cluster.
		provisionable_autonomous_container_databases?: number

		// The number of Autonomous CDBs currently provisioned in the
		// Autonomous VM cluster.
		provisioned_autonomous_container_databases?: number

		// The number of CPU cores currently provisioned in the Autonomous
		// VM cluster.
		provisioned_cpus?: number

		// The number of CPU cores that can be reclaimed from terminated
		// or scaled-down Autonomous Databases.
		reclaimable_cpus?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The number of CPU cores reserved for system operations and
		// redundancy.
		reserved_cpus?: number

		// The SCAN listener port for non-TLS (TCP) protocol. The default
		// is 1521.
		scan_listener_port_non_tls?: number

		// The SCAN listener port for TLS (TCP) protocol. The default is
		// 2484.
		scan_listener_port_tls?: number

		// The shape of the Exadata infrastructure for the Autonomous VM
		// cluster.
		shape?: string

		// The status of the Autonomous VM cluster.
		status?: string

		// Additional information about the current status of the
		// Autonomous VM cluster.
		status_reason?: string
		tags?: [string]: string

		// The expiration date and time of the database SSL certificate.
		time_database_ssl_certificate_expires?: string

		// The expiration date and time of the Oracle REST Data Services
		// (ORDS)certificate .
		time_ords_certificate_expires?: string

		// The time zone of the Autonomous VM cluster.
		time_zone?: string

		// The total number of Autonomous Container Databases that can be
		// created with the allocated local storage.
		total_container_databases?: number
	})
}
