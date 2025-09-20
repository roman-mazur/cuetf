package data

#aws_odb_cloud_vm_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_odb_cloud_vm_cluster")
	close({
		arn?: string

		// The ID of the Cloud Exadata Infrastructure.
		cloud_exadata_infrastructure_id?: string

		// The name of the Grid Infrastructure (GI) cluster.
		cluster_name?: string

		// The OCI model compute model used when you create or clone an
		// instance: ECPU or
		// OCPU. An ECPU is an abstracted measure of compute resources.
		// ECPUs are based on
		// the number of cores elastically allocated from a pool of
		// compute and storage
		// servers. An OCPU is a legacy physical measure of compute
		// resources. OCPUs are
		// based on the physical core of a processor with hyper-threading
		// enabled.
		compute_model?: string

		// The number of CPU cores enabled on the VM cluster.
		cpu_core_count?: number

		// The time when the VM cluster was created.
		created_at?: string

		// The set of diagnostic collection options enabled for the VM
		// cluster.
		data_collection_options?: [...close({
			is_diagnostics_events_enabled?: bool
			is_health_monitoring_enabled?:  bool
			is_incident_logs_enabled?:      bool
		})]

		// The size of the data disk group, in terabytes (TB), that's
		// allocated for the VM cluster.
		data_storage_size_in_tbs?: number

		// The amount of local node storage, in gigabytes (GB), that's
		// allocated for the VM cluster.
		db_node_storage_size_in_gbs?: number

		// The list of database servers for the VM cluster.
		db_servers?: [...string]

		// The type of redundancy configured for the VM cluster. NORMAL is
		// 2-way redundancy. HIGH is 3-way redundancy.
		disk_redundancy?: string

		// The display name of the VM cluster.
		display_name?: string

		// The domain name of the VM cluster.
		domain?: string

		// he software version of the Oracle Grid Infrastructure (GI) for
		// the VM cluster.
		gi_version?: string

		// The computed hostname prefix for the VM cluster.
		hostname_prefix_computed?: string

		// The unique identifier of the VM cluster.
		id!: string

		// The ExadataIormConfig cache details for the VM cluster.
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

		// Indicates whether database backups to local Exadata storage is
		// enabled for the VM cluster.
		is_local_backup_enabled?: bool

		// Indicates whether the VM cluster is configured with a sparse
		// disk group.
		is_sparse_disk_group_enabled?: bool

		// The Oracle Cloud ID (OCID) of the last maintenance update
		// history entry.
		last_update_history_entry_id?: string

		// The Oracle license model applied to the VM cluster.
		license_model?: string

		// The port number configured for the listener on the VM cluster.
		listener_port?: number

		// The amount of memory, in gigabytes (GB), that's allocated for
		// the VM cluster.
		memory_size_in_gbs?: number

		// The number of nodes in the VM cluster.
		node_count?: number

		// The name of the OCI Resource Anchor.
		oci_resource_anchor_name?: string

		// The HTTPS link to the VM cluster in OCI.
		oci_url?: string

		// The OCID of the VM cluster.
		ocid?: string

		// The ID of the ODB network.
		odb_network_id?: string

		// The amount of progress made on the current operation on the VM
		// cluster,expressed as a percentage.
		percent_progress?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The FQDN of the DNS record for the Single Client Access Name
		// (SCAN) IP
		// addresses that are associated with the VM cluster.
		scan_dns_name?: string

		// The OCID of the DNS record for the SCAN IP addresses that are
		// associated with the VM cluster.
		scan_dns_record_id?: string

		// The OCID of the SCAN IP addresses that are associated with the
		// VM cluster.
		scan_ip_ids?: [...string]

		// The hardware model name of the Exadata infrastructure that's
		// running the VM cluster.
		shape?: string

		// he public key portion of one or more key pairs used for SSH
		// access to the VM cluster.
		ssh_public_keys?: [...string]

		// The status of the VM cluster.
		status?: string

		// Additional information about the status of the VM cluster.
		status_reason?: string

		// The amount of local node storage, in gigabytes (GB), that's
		// allocated to the VM cluster.
		storage_size_in_gbs?: number

		// The operating system version of the image chosen for the VM
		// cluster.
		system_version?: string
		tags?: [string]: string

		// The time zone of the VM cluster.
		timezone?: string

		// The virtual IP (VIP) addresses that are associated with the VM
		// cluster.
		// Oracle's Cluster Ready Services (CRS) creates and maintains one
		// VIP address for
		// each node in the VM cluster to enable failover. If one node
		// fails, the VIP is
		// reassigned to another active node in the cluster.
		vip_ids?: [...string]
	})
}
