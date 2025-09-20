package res

import "list"

#azurerm_mssql_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_database")
	close({
		auto_pause_delay_in_minutes?:    number
		collation?:                      string
		create_mode?:                    string
		creation_source_database_id?:    string
		elastic_pool_id?:                string
		enclave_type?:                   string
		geo_backup_enabled?:             bool
		id?:                             string
		ledger_enabled?:                 bool
		license_type?:                   string
		maintenance_configuration_name?: string
		max_size_gb?:                    number
		min_capacity?:                   number
		name!:                           string
		read_replica_count?:             number
		read_scale?:                     bool
		recover_database_id?:            string
		recovery_point_id?:              string
		restore_dropped_database_id?:    string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		restore_long_term_retention_backup_id?: string
		import?: matchN(1, [#import, list.MaxItems(1) & [...#import]])
		restore_point_in_time?: string
		long_term_retention_policy?: matchN(1, [#long_term_retention_policy, list.MaxItems(1) & [...#long_term_retention_policy]])
		sample_name?:          string
		secondary_type?:       string
		server_id!:            string
		sku_name?:             string
		storage_account_type?: string
		tags?: [string]: string
		transparent_data_encryption_enabled?:                        bool
		transparent_data_encryption_key_automatic_rotation_enabled?: bool
		short_term_retention_policy?: matchN(1, [#short_term_retention_policy, list.MaxItems(1) & [...#short_term_retention_policy]])
		transparent_data_encryption_key_vault_key_id?: string
		threat_detection_policy?: matchN(1, [#threat_detection_policy, list.MaxItems(1) & [...#threat_detection_policy]])
		timeouts?:       #timeouts
		zone_redundant?: bool
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#import: close({
		administrator_login!:          string
		administrator_login_password!: string
		authentication_type!:          string
		storage_account_id?:           string
		storage_key!:                  string
		storage_key_type!:             string
		storage_uri!:                  string
	})

	#long_term_retention_policy: close({
		immutable_backups_enabled?: bool
		monthly_retention?:         string
		week_of_year?:              number
		weekly_retention?:          string
		yearly_retention?:          string
	})

	#short_term_retention_policy: close({
		backup_interval_in_hours?: number
		retention_days!:           number
	})

	#threat_detection_policy: close({
		disabled_alerts?: [...string]
		email_account_admins?: string
		email_addresses?: [...string]
		retention_days?:             number
		state?:                      string
		storage_account_access_key?: string
		storage_endpoint?:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
