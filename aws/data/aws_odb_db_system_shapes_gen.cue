package data

#aws_odb_db_system_shapes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_odb_db_system_shapes")
	close({
		// The physical ID of the AZ, for example, use1-az4. This ID
		// persists across accounts.
		availability_zone_id?: string

		// The list of shapes and their properties. Information about a
		// hardware system model (shape) that's available for an Exadata
		// infrastructure.The shape determines resources, such as CPU
		// cores, memory, and storage, to allocate to the Exadata
		// infrastructure.
		db_system_shapes?: [...close({
			available_core_count?:                     number
			available_core_count_per_node?:            number
			available_data_storage_in_tbs?:            number
			available_data_storage_per_server_in_tbs?: number
			available_db_node_per_node_in_gbs?:        number
			available_db_node_storage_in_gbs?:         number
			available_memory_in_gbs?:                  number
			available_memory_per_node_in_gbs?:         number
			core_count_increment?:                     number
			max_storage_count?:                        number
			maximum_node_count?:                       number
			min_core_count_per_node?:                  number
			min_data_storage_in_tbs?:                  number
			min_db_node_storage_per_node_in_gbs?:      number
			min_memory_per_node_in_gbs?:               number
			min_storage_count?:                        number
			minimum_core_count?:                       number
			minimum_node_count?:                       number
			name?:                                     string
			runtime_minimum_core_count?:               number
			shape_family?:                             string
			shape_type?:                               string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
