package res

#aws_odb_cloud_vm_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_odb_cloud_vm_cluster")
	close({
		// The unique identifier of the Exadata infrastructure for this VM
		// cluster. Changing this will create a new resource.
		cloud_exadata_infrastructure_arn?: string

		// The unique identifier of the Exadata infrastructure for this VM
		// cluster. Changing this will create a new resource.
		cloud_exadata_infrastructure_id?: string

		// The name of the Grid Infrastructure (GI) cluster. Changing this
		// will create a new resource.
		cluster_name?: string
		arn?:          string

		// The compute model used when the instance is created or cloned —
		// either ECPU or OCPU. ECPU is a virtualized compute unit; OCPU
		// is a physical processor core with hyper-threading.
		compute_model?: string

		// The number of CPU cores to enable on the VM cluster. Changing
		// this will create a new resource.
		cpu_core_count!: number

		// The timestamp when the VM cluster was created.
		created_at?: string

		// The size of the data disk group, in terabytes (TBs), to
		// allocate for the VM cluster. Changing this will create a new
		// resource.
		data_storage_size_in_tbs!: number

		// The amount of local node storage, in gigabytes (GBs), to
		// allocate for the VM cluster. Changing this will create a new
		// resource.
		db_node_storage_size_in_gbs?: number

		// The list of database servers for the VM cluster. Changing this
		// will create a new resource.
		db_servers!: [...string]

		// The type of redundancy for the VM cluster: NORMAL (2-way) or
		// HIGH (3-way).
		disk_redundancy?: string

		// A user-friendly name for the VM cluster. This member is
		// required. Changing this will create a new resource.
		display_name!: string

		// The domain name associated with the VM cluster.
		domain?: string

		// A valid software version of Oracle Grid Infrastructure (GI). To
		// get the list of valid values, use the ListGiVersions operation
		// and specify the shape of the Exadata infrastructure. Example:
		// 19.0.0.0 This member is required. Changing this will create a
		// new resource.
		gi_version!: string

		// A complete software version of Oracle Grid Infrastructure (GI).
		gi_version_computed?: string

		// The host name prefix for the VM cluster. Constraints: - Can't
		// be "localhost" or "hostname". - Can't contain "-version". -
		// The maximum length of the combined hostname and domain is 63
		// characters. - The hostname must be unique within the subnet.
		// This member is required. Changing this will create a new
		// resource.
		hostname_prefix!: string

		// The host name for the VM cluster. Constraints: - Can't be
		// "localhost" or "hostname". - Can't contain "-version". - The
		// maximum length of the combined hostname and domain is 63
		// characters. - The hostname must be unique within the subnet.
		// This member is required. Changing this will create a new
		// resource.
		hostname_prefix_computed?: string

		// The Exadata IORM (I/O Resource Manager) configuration cache
		// details for the VM cluster.
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

		// Specifies whether to enable database backups to local Exadata
		// storage for the VM cluster. Changing this will create a new
		// resource.
		is_local_backup_enabled?: bool
		id?:                      string

		// Specifies whether to create a sparse disk group for the VM
		// cluster. Changing this will create a new resource.
		is_sparse_diskgroup_enabled?: bool

		// The OCID of the most recent maintenance update history entry.
		last_update_history_entry_id?: string

		// The Oracle license model to apply to the VM cluster. Default:
		// LICENSE_INCLUDED. Changing this will create a new resource.
		license_model?: string

		// The listener port number configured on the VM cluster.
		listener_port?: number

		// The amount of memory, in gigabytes (GBs), to allocate for the
		// VM cluster. Changing this will create a new resource.
		memory_size_in_gbs?: number

		// The total number of nodes in the VM cluster.
		node_count?: number
		data_collection_options?: matchN(1, [#data_collection_options, [...#data_collection_options]])
		timeouts?: #timeouts

		// The name of the OCI resource anchor associated with the VM
		// cluster.
		oci_resource_anchor_name?: string

		// The HTTPS link to the VM cluster resource in OCI.
		oci_url?: string

		// The OCID (Oracle Cloud Identifier) of the VM cluster.
		ocid?: string

		// The unique identifier of the ODB network for the VM cluster.
		// This member is required. Changing this will create a new
		// resource.
		odb_network_arn?: string

		// The unique identifier of the ODB network for the VM cluster.
		// This member is required. Changing this will create a new
		// resource.
		odb_network_id?: string

		// The percentage of progress made on the current operation for
		// the VM cluster.
		percent_progress?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The fully qualified domain name (FQDN) for the SCAN IP
		// addresses associated with the VM cluster.
		scan_dns_name?: string

		// The OCID of the DNS record for the SCAN IPs linked to the VM
		// cluster.
		scan_dns_record_id?: string

		// The list of OCIDs for SCAN IP addresses associated with the VM
		// cluster.
		scan_ip_ids?: [...string]

		// The port number for TCP connections to the single client access
		// name (SCAN) listener. Valid values: 1024–8999 with the
		// following exceptions: 2484 , 6100 , 6200 , 7060, 7070 , 7085 ,
		// and 7879Default: 1521. Changing this will create a new
		// resource.
		scan_listener_port_tcp?: number

		// The hardware model name of the Exadata infrastructure running
		// the VM cluster.
		shape?: string

		// The public key portion of one or more key pairs used for SSH
		// access to the VM cluster. This member is required. Changing
		// this will create a new resource.
		ssh_public_keys!: [...string]

		// The current lifecycle status of the VM cluster.
		status?: string

		// Additional information regarding the current status of the VM
		// cluster.
		status_reason?: string

		// The local node storage allocated to the VM cluster, in
		// gigabytes (GB).
		storage_size_in_gbs?: number

		// The operating system version of the image chosen for the VM
		// cluster.
		system_version?: string
		tags?: [string]:     string
		tags_all?: [string]: string

		// The configured time zone of the VM cluster. Changing this will
		// create a new resource.
		timezone?: string

		// The virtual IP (VIP) addresses assigned to the VM cluster. CRS
		// assigns one VIP per node for failover support.
		vip_ids?: [...string]
	})

	#data_collection_options: close({
		is_diagnostics_events_enabled!: bool
		is_health_monitoring_enabled!:  bool
		is_incident_logs_enabled!:      bool
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
