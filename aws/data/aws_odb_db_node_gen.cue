package data

#aws_odb_db_node: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_odb_db_node")
	close({
		// Additional information about the planned maintenance.
		additional_details?: string

		// The Oracle Cloud ID (OCID) of the backup IP address that's
		// associated with the DB node.
		backup_ip_id?: string

		// The OCID of the second backup VNIC.
		backup_vnic2_id?: string

		// The OCID of the backup VNIC.
		backup_vnic_id?: string
		arn?:            string

		// Number of CPU cores enabled on the DB node.
		cpu_core_count?: number

		// The date and time when the DB node was created.
		created_at?: string

		// The unique identifier of the DB server that is associated with
		// the DB node.
		db_server_id?: string

		// The amount of local node storage, in gigabytes (GBs), allocated
		// on the DB node.
		db_storage_size_in_gbs?: number
		cloud_vm_cluster_id!:    string

		// The OCID of the DB system.
		db_system_id?: string

		// The name of the fault domain the instance is contained in.
		fault_domain?: string

		// The floating IP address assigned to the DB node.
		floating_ip_address?: string

		// The OCID of the host IP address that's associated with the DB
		// node.
		host_ip_id?: string

		// The host name for the DB node.
		hostname?: string

		// The type of database node maintenance. Either
		// VMDB_REBOOT_MIGRATION or EXADBXS_REBOOT_MIGRATION.
		maintenance_type?: string

		// The allocated memory in GBs on the DB node.
		memory_size_in_gbs?: number
		id!:                 string

		// The name of the OCI resource anchor for the DB node.
		oci_resource_anchor_name?: string

		// The OCID of the DB node.
		ocid?: string

		// The private IP address assigned to the DB node.
		private_ip_address?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The size (in GB) of the block storage volume allocation for the
		// DB system.
		software_storage_size_in_gbs?: number

		// The current status of the DB node.
		status?: string

		// Additional information about the status of the DB node.
		status_reason?: string

		// End date and time of maintenance window.
		time_maintenance_window_end?: string

		// Start date and time of maintenance window.
		time_maintenance_window_start?: string

		// The total number of CPU cores reserved on the DB node.
		total_cpu_core_count?: number

		// The OCID of the second VNIC.
		vnic2_id?: string

		// The OCID of the VNIC.
		vnic_id?: string
	})
}
