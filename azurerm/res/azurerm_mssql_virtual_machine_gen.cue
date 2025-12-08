package res

import "list"

#azurerm_mssql_virtual_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_virtual_machine")
	close({
		id?:                               string
		r_services_enabled?:               bool
		sql_connectivity_port?:            number
		sql_connectivity_type?:            string
		sql_connectivity_update_password?: string
		sql_connectivity_update_username?: string
		sql_license_type?:                 string
		sql_virtual_machine_group_id?:     string
		tags?: [string]: string
		virtual_machine_id!: string
		assessment?: matchN(1, [#assessment, list.MaxItems(1) & [...#assessment]])
		auto_backup?: matchN(1, [#auto_backup, list.MaxItems(1) & [...#auto_backup]])
		auto_patching?: matchN(1, [#auto_patching, list.MaxItems(1) & [...#auto_patching]])
		key_vault_credential?: matchN(1, [#key_vault_credential, list.MaxItems(1) & [...#key_vault_credential]])
		sql_instance?: matchN(1, [#sql_instance, list.MaxItems(1) & [...#sql_instance]])
		storage_configuration?: matchN(1, [#storage_configuration, list.MaxItems(1) & [...#storage_configuration]])
		timeouts?: #timeouts
		wsfc_domain_credential?: matchN(1, [#wsfc_domain_credential, list.MaxItems(1) & [...#wsfc_domain_credential]])
	})

	#assessment: close({
		schedule?: matchN(1, [_#defs."/$defs/assessment/$defs/schedule", list.MaxItems(1) & [..._#defs."/$defs/assessment/$defs/schedule"]])
		enabled?:         bool
		run_immediately?: bool
	})

	#auto_backup: close({
		manual_schedule?: matchN(1, [_#defs."/$defs/auto_backup/$defs/manual_schedule", list.MaxItems(1) & [..._#defs."/$defs/auto_backup/$defs/manual_schedule"]])
		encryption_password?:             string
		retention_period_in_days!:        number
		storage_account_access_key!:      string
		storage_blob_endpoint!:           string
		system_databases_backup_enabled?: bool
	})

	#auto_patching: close({
		day_of_week!:                            string
		maintenance_window_duration_in_minutes!: number
		maintenance_window_starting_hour!:       number
	})

	#key_vault_credential: close({
		key_vault_url!:            string
		name!:                     string
		service_principal_name!:   string
		service_principal_secret!: string
	})

	#sql_instance: close({
		adhoc_workloads_optimization_enabled?: bool
		collation?:                            string
		instant_file_initialization_enabled?:  bool
		lock_pages_in_memory_enabled?:         bool
		max_dop?:                              number
		max_server_memory_mb?:                 number
		min_server_memory_mb?:                 number
	})

	#storage_configuration: close({
		data_settings?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/data_settings", list.MaxItems(1) & [..._#defs."/$defs/storage_configuration/$defs/data_settings"]])
		log_settings?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/log_settings", list.MaxItems(1) & [..._#defs."/$defs/storage_configuration/$defs/log_settings"]])
		temp_db_settings?: matchN(1, [_#defs."/$defs/storage_configuration/$defs/temp_db_settings", list.MaxItems(1) & [..._#defs."/$defs/storage_configuration/$defs/temp_db_settings"]])
		disk_type!:                      string
		storage_workload_type!:          string
		system_db_on_data_disk_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#wsfc_domain_credential: close({
		cluster_bootstrap_account_password!: string
		cluster_operator_account_password!:  string
		sql_service_account_password!:       string
	})

	_#defs: "/$defs/assessment/$defs/schedule": close({
		day_of_week!:        string
		monthly_occurrence?: number
		start_time!:         string
		weekly_interval?:    number
	})

	_#defs: "/$defs/auto_backup/$defs/manual_schedule": close({
		days_of_week?: [...string]
		full_backup_frequency!:           string
		full_backup_start_hour!:          number
		full_backup_window_in_hours!:     number
		log_backup_frequency_in_minutes!: number
	})

	_#defs: "/$defs/storage_configuration/$defs/data_settings": close({
		default_file_path!: string
		luns!: [...number]
	})

	_#defs: "/$defs/storage_configuration/$defs/log_settings": close({
		default_file_path!: string
		luns!: [...number]
	})

	_#defs: "/$defs/storage_configuration/$defs/temp_db_settings": close({
		data_file_count?:        number
		data_file_growth_in_mb?: number
		data_file_size_mb?:      number
		default_file_path!:      string
		log_file_growth_mb?:     number
		log_file_size_mb?:       number
		luns!: [...number]
	})
}
