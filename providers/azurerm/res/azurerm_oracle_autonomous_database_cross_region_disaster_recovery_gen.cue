package res

azurerm_oracle_autonomous_database_cross_region_disaster_recovery: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_oracle_autonomous_database_cross_region_disaster_recovery")
	close({
		timeouts?:                         #timeouts
		auto_scaling_enabled?:             bool
		auto_scaling_for_storage_enabled?: bool
		backup_retention_period_in_days?:  number
		character_set?:                    string
		compute_count?:                    number
		compute_model?:                    string
		customer_contacts?: [...string]
		data_storage_size_in_tb?:             number
		database_version?:                    string
		database_workload?:                   string
		display_name!:                        string
		id?:                                  string
		license_model?:                       string
		location!:                            string
		mtls_connection_required?:            bool
		name!:                                string
		national_character_set?:              string
		remote_disaster_recovery_type?:       string
		replicate_automatic_backups_enabled?: bool
		resource_group_name!:                 string
		source_autonomous_database_id!:       string
		subnet_id!:                           string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
