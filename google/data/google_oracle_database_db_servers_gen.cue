package data

#google_oracle_database_db_servers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_db_servers")
	close({
		// exadata
		cloud_exadata_infrastructure!: string
		db_servers?: [...close({
			display_name?: string
			properties?: [...close({
				db_node_ids?: [...string]
				db_node_storage_size_gb?:     number
				max_db_node_storage_size_gb?: number
				max_memory_size_gb?:          number
				max_ocpu_count?:              number
				memory_size_gb?:              number
				ocid?:                        string
				ocpu_count?:                  number
				state?:                       string
				vm_count?:                    number
			})]
		})]

		// location
		location!: string
		id?:       string

		// The ID of the project in which the dataset is located. If it is
		// not provided, the provider project is used.
		project?: string
	})
}
