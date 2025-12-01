package res

#aws_odb_cloud_autonomous_vm_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_odb_cloud_autonomous_vm_cluster")
	close({
		arn?: string

		// The progress of the current operation on the Autonomous VM
		// cluster, as a percentage.
		autonomous_data_storage_percentage?: number

		// The data storage size allocated for Autonomous Databases in the
		// Autonomous VM cluster, in TB. Changing this will force
		// terraform to create new resource.
		autonomous_data_storage_size_in_tbs!: number

		// The available data storage space for Autonomous Databases in
		// the Autonomous VM cluster, in TB.
		available_autonomous_data_storage_size_in_tbs?: number

		// The number of Autonomous CDBs that you can create with the
		// currently available storage.
		available_container_databases?: number

		// The number of CPU cores available for allocation to Autonomous
		// Databases
		available_cpus?: number

		// Exadata infrastructure id. Changing this will force terraform
		// to create new resource.
		cloud_exadata_infrastructure_id!: string

		// The compute model of the Autonomous VM cluster: ECPU or OCPU.
		compute_model?: string

		// The total number of CPU cores in the Autonomous VM cluster.
		cpu_core_count?: number

		// The number of CPU cores enabled per node in the Autonomous VM
		// cluster.
		cpu_core_count_per_node!: number

		// The percentage of total CPU cores currently in use in the
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

		// The database servers in the Autonomous VM cluster. Changing
		// this will force terraform to create new resource.
		db_servers!: [...string]

		// The description of the Autonomous VM cluster.
		description?: string

		// The display name of the Autonomous VM cluster. Changing this
		// will force terraform to create new resource.
		display_name!: string

		// The domain name of the Autonomous VM cluster.
		domain?: string

		// The minimum value to which you can scale down the Exadata
		// storage, in TB.
		exadata_storage_in_tbs_lowest_scaled_value?: number

		// The hostname of the Autonomous VM cluster.
		hostname?: string
		id?:       string

		// Indicates whether mutual TLS (mTLS) authentication is enabled
		// for the Autonomous VM cluster. Changing this will force
		// terraform to create new resource.
		is_mtls_enabled_vm_cluster?: bool

		// The license model for the Autonomous VM cluster. Valid values
		// are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE . Changing this
		// will force terraform to create new resource.
		license_model?: string

		// The minimum value to which you can scale down the maximum
		// number of Autonomous CDBs.
		max_acds_lowest_scaled_value?: number

		// The amount of memory allocated per Oracle Compute Unit, in GB.
		// Changing this will force terraform to create new resource.
		memory_per_oracle_compute_unit_in_gbs!: number

		// The total amount of memory allocated to the Autonomous VM
		// cluster, in gigabytes(GB).
		memory_size_in_gbs?: number

		// The number of database server nodes in the Autonomous VM
		// cluster.
		node_count?: number

		// The number of Autonomous CDBs that can't be provisioned because
		// of resource constraints.
		non_provisionable_autonomous_container_databases?: number
		maintenance_window?: matchN(1, [#maintenance_window, [...#maintenance_window]])
		timeouts?: #timeouts

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
		// Autonomous VM Cluster. Changing this will force terraform to
		// create new resource.
		odb_network_id!: string

		// The local node storage allocated to the Autonomous VM cluster,
		// in gigabytes (GB)
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

		// The number of CPUs provisioned in the Autonomous VM cluster.
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
		// is 1521. Changing this will force terraform to create new
		// resource.
		scan_listener_port_non_tls!: number

		// The SCAN listener port for TLS (TCP) protocol. The default is
		// 2484. Changing this will force terraform to create new
		// resource.
		scan_listener_port_tls!: number

		// The shape of the Exadata infrastructure for the Autonomous VM
		// cluster.
		shape?: string

		// The status of the Autonomous VM cluster. Possible values
		// include CREATING, AVAILABLE , UPDATING , DELETING , DELETED ,
		// FAILED
		status?: string

		// Additional information about the current status of the
		// Autonomous VM cluster.
		status_reason?: string
		tags?: [string]:     string
		tags_all?: [string]: string

		// The expiration date and time of the database SSL certificate.
		time_database_ssl_certificate_expires?: string

		// The time zone of the Autonomous VM cluster. Changing this will
		// force terraform to create new resource.
		time_zone?:                     string
		time_ords_certificate_expires?: string

		// The total number of Autonomous Container Databases that can be
		// created with the allocated local storage. Changing this will
		// force terraform to create new resource.
		total_container_databases!: number
	})

	#maintenance_window: close({
		// The days of the week when maintenance can be performed.
		days_of_week?: [...close({
			name?: string
		})]

		// The hours of the day when maintenance can be performed.
		hours_of_day?: [...number]

		// The lead time in weeks before the maintenance window.
		lead_time_in_weeks?: number

		// The months when maintenance can be performed.
		months?: [...close({
			name?: string
		})]

		// The preference for the maintenance window scheduling.
		preference!: string

		// Indicates whether to skip release updates during maintenance.
		weeks_of_month?: [...number]
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})
}
