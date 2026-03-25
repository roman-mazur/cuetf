package data

#google_backup_dr_data_sources: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_backup_dr_data_sources")
	close({
		backup_vault_id!: string

		// The list of DataSources found.
		data_sources?: [...close({
			backup_config_info?: [...close({
				backup_appliance_backup_config?: [...close({
					application_name?:      string
					backup_appliance_id?:   string
					backup_appliance_name?: string
					host_name?:             string
					sla_id?:                string
					slp_name?:              string
					slt_name?:              string
				})]
				gcp_backup_config?: [...close({
					backup_plan?:             string
					backup_plan_association?: string
					backup_plan_description?: string
					backup_plan_rules?: [...string]
				})]
				last_backup_error?: [string]: string
				last_backup_state?:                       string
				last_successful_backup_consistency_time?: string
			})]
			backup_count?: string
			config_state?: string
			create_time?:  string
			data_source_backup_appliance_application?: [...close({
				appliance_id?:     string
				application_id?:   string
				application_name?: string
				backup_appliance?: string
				host_id?:          string
				hostname?:         string
				type?:             string
			})]
			data_source_gcp_resource?: [...close({
				compute_instance_data_source_properties?: [...close({
					description?:        string
					machine_type?:       string
					name?:               string
					total_disk_count?:   string
					total_disk_size_gb?: string
				})]
				gcp_resourcename?: string
				location?:         string
				type?:             string
			})]
			etag?: string
			labels?: [string]: string
			name?:               string
			state?:              string
			total_stored_bytes?: string
			update_time?:        string
		})]

		// The filter to apply to list results.
		filter?:   string
		id?:       string
		location!: string

		// The order to sort results by.
		order_by?: string
		project?:  string
	})
}
