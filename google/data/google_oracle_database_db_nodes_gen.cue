package data

#google_oracle_database_db_nodes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_db_nodes")
	close({
		// vmcluster
		cloud_vm_cluster!: string
		db_nodes?: [...close({
			name?: string
			properties?: [...close({
				db_node_storage_size_gb?: number
				db_server_ocid?:          string
				hostname?:                string
				memory_size_gb?:          number
				ocid?:                    string
				ocpu_count?:              number
				state?:                   string
				total_cpu_core_count?:    number
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
