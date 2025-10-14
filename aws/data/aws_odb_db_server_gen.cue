package data

#aws_odb_db_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_odb_db_server")
	close({
		// The list of unique identifiers for the Autonomous VMs
		// associated with this database server.
		autonomous_virtual_machine_ids?: [...string]

		// The OCID of the autonomous VM clusters that are associated with
		// the database server.
		autonomous_vm_cluster_ids?: [...string]

		// The identifier of the database server to retrieve information
		// about.
		cloud_exadata_infrastructure_id!: string

		// The compute model of the database server.
		compute_model?: string

		// The number of CPU cores enabled on the database server.
		cpu_core_count?: number

		// The date and time when the database server was created.
		created_at?: string

		// The allocated local node storage in GBs on the database server.
		db_node_storage_size_in_gbs?: number

		// The scheduling details for the quarterly maintenance window.
		// Patching and
		// system updates take place during the maintenance window.
		db_server_patching_details?: [...close({
			estimated_patch_duration?: number
			patching_status?:          string
			time_patching_ended?:      string
			time_patching_started?:    string
		})]

		// The display name of the database server.
		display_name?: string

		// The exadata infrastructure ID of the database server.
		exadata_infrastructure_id?: string

		// The identifier of the the database server.
		id!: string

		// The total number of CPU cores available.
		max_cpu_count?: number

		// The total local node storage available in GBs.
		max_db_node_storage_in_gbs?: number

		// The total memory available in GBs.
		max_memory_in_gbs?: number

		// The allocated memory in GBs on the database server.
		memory_size_in_gbs?: number

		// The name of the OCI resource anchor.
		oci_resource_anchor_name?: string

		// The OCID of the database server to retrieve information about.
		ocid?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The shape of the database server. The shape determines the
		// amount of CPU, storage, and memory resources available.
		shape?: string

		// The status of the database server.
		status?: string

		// Additional information about the current status of the database
		// server.
		status_reason?: string

		// The OCID of the VM clusters that are associated with the
		// database server.
		vm_cluster_ids?: [...string]
	})
}
