package data

#google_oracle_database_goldengate_deployment_environments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_goldengate_deployment_environments")
	close({
		goldengate_deployment_environments?: [...close({
			auto_scaling_enabled?:                bool
			category?:                            string
			default_cpu_core_count?:              number
			display_name?:                        string
			environment_type?:                    string
			max_cpu_core_count?:                  number
			memory_gb_per_cpu_core?:              number
			min_cpu_core_count?:                  number
			name?:                                string
			network_bandwidth_gbps_per_cpu_core?: number
			storage_usage_limit_gb_per_cpu_core?: number
		})]
		id?: string

		// The location of the resource.
		location!: string

		// The ID of the project in which the resource is located. If it
		// is not provided, the provider project is used.
		project?: string
	})
}
