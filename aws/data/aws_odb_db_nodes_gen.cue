package data

#aws_odb_db_nodes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_odb_db_nodes")
	close({
		// Id of the cloud VM cluster. The unique identifier of the VM
		// cluster.
		cloud_vm_cluster_id!: string

		// The list of DB nodes along with their properties.
		db_nodes?: [...close({
			additional_details?:            string
			arn?:                           string
			backup_ip_id?:                  string
			backup_vnic2_id?:               string
			backup_vnic_id?:                string
			cpu_core_count?:                number
			created_at?:                    string
			db_node_storage_size?:          number
			db_server_id?:                  string
			db_system_id?:                  string
			fault_domain?:                  string
			host_ip_id?:                    string
			hostname?:                      string
			id?:                            string
			maintenance_type?:              string
			memory_size?:                   number
			oci_resource_anchor_name?:      string
			ocid?:                          string
			software_storage_size?:         number
			status?:                        string
			status_reason?:                 string
			time_maintenance_window_end?:   string
			time_maintenance_window_start?: string
			total_cpu_core_count?:          number
			vnic2_id?:                      string
			vnic_id?:                       string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
