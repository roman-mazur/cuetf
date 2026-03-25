package data

#google_oracle_database_cloud_exadata_infrastructures: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_cloud_exadata_infrastructures")
	close({
		cloud_exadata_infrastructures?: [...close({
			cloud_exadata_infrastructure_id?: string
			create_time?:                     string
			deletion_protection?:             bool
			display_name?:                    string
			effective_labels?: [string]: string
			entitlement_id?:  string
			gcp_oracle_zone?: string
			labels?: [string]: string
			location?: string
			name?:     string
			project?:  string
			properties?: [...close({
				activated_storage_count?:   number
				additional_storage_count?:  number
				available_storage_size_gb?: number
				compute_count?:             number
				cpu_count?:                 number
				customer_contacts?: [...close({
					email?: string
				})]
				data_storage_size_tb?:    number
				db_node_storage_size_gb?: number
				db_server_version?:       string
				maintenance_window?: [...close({
					custom_action_timeout_mins?: number
					days_of_week?: [...string]
					hours_of_day?: [...number]
					is_custom_action_timeout_enabled?: bool
					lead_time_week?:                   number
					months?: [...string]
					patching_mode?: string
					preference?:    string
					weeks_of_month?: [...number]
				})]
				max_cpu_count?:                      number
				max_data_storage_tb?:                number
				max_db_node_storage_size_gb?:        number
				max_memory_gb?:                      number
				memory_size_gb?:                     number
				monthly_db_server_version?:          string
				monthly_storage_server_version?:     string
				next_maintenance_run_id?:            string
				next_maintenance_run_time?:          string
				next_security_maintenance_run_time?: string
				oci_url?:                            string
				ocid?:                               string
				shape?:                              string
				state?:                              string
				storage_count?:                      number
				storage_server_version?:             string
				total_storage_size_gb?:              number
			})]
			terraform_labels?: [string]: string
		})]
		id?: string

		// location
		location!: string

		// The ID of the project in which the dataset is located. If it is
		// not provided, the provider project is used.
		project?: string
	})
}
