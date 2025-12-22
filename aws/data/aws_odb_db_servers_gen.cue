package data

#aws_odb_db_servers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_odb_db_servers")
	close({
		// The cloud exadata infrastructure ID. Mandatory field.
		cloud_exadata_infrastructure_id!: string

		// List of database servers associated with
		// cloud_exadata_infrastructure_id.
		db_servers?: [...close({
			autonomous_virtual_machine_ids?: [...string]
			autonomous_vm_cluster_ids?: [...string]
			compute_model?:               string
			cpu_core_count?:              number
			created_at?:                  string
			db_node_storage_size_in_gbs?: number
			db_server_patching_details?: [...close({
				estimated_patch_duration?: number
				patching_status?:          string
				time_patching_ended?:      string
				time_patching_started?:    string
			})]
			display_name?:               string
			exadata_infrastructure_id?:  string
			id?:                         string
			max_cpu_count?:              number
			max_db_node_storage_in_gbs?: number
			max_memory_in_gbs?:          number
			memory_size_in_gbs?:         number
			oci_resource_anchor_name?:   string
			ocid?:                       string
			shape?:                      string
			status?:                     string
			status_reason?:              string
			vm_cluster_ids?: [...string]
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
