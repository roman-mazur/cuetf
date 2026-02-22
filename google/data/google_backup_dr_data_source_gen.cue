package data

#google_backup_dr_data_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_backup_dr_data_source")
	close({
		// Details of how the resource is configured for backup.
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

		// Number of backups in the data source.
		backup_count?: string

		// The backup configuration state.
		config_state?:    string
		backup_vault_id!: string

		// The time when the instance was created.
		create_time?: string

		// The backed up resource is a backup appliance application.
		data_source_backup_appliance_application?: [...close({
			appliance_id?:     string
			application_id?:   string
			application_name?: string
			backup_appliance?: string
			host_id?:          string
			hostname?:         string
			type?:             string
		})]

		// The backed up resource is a Google Cloud resource.
		// The word 'DataSource' was included in the names to indicate
		// that this is
		// the representation of the Google Cloud resource used within the
		// DataSource object.
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
		data_source_id!: string

		// Server specified ETag for the ManagementServer resource to
		// prevent simultaneous updates from overwiting each other.
		etag?: string
		id?:   string

		// Resource labels to represent user provided metadata.
		labels?: [string]: string
		location!: string

		// Name of the datasource to create.
		// It must have the format
		// "projects/{project}/locations/{location}/backupVaults/{backupvault}/dataSources/{datasource}".
		// '{datasource}' cannot be changed after creation. It must be
		// between 3-63 characters long and must be unique within the
		// backup vault.
		name?: string

		// The DataSource resource instance state.
		state?:   string
		project?: string

		// The number of bytes (metadata and data) stored in this
		// datasource.
		total_stored_bytes?: string

		// The time when the instance was updated.
		update_time?: string
	})
}
