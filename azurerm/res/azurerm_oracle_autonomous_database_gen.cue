package res

import "list"

#azurerm_oracle_autonomous_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_oracle_autonomous_database")
	close({
		admin_password!: string
		allowed_ips?: [...string]
		auto_scaling_enabled!:             bool
		auto_scaling_for_storage_enabled!: bool
		backup_retention_period_in_days!:  number
		character_set!:                    string
		compute_count!:                    number
		compute_model!:                    string
		customer_contacts?: [...string]
		data_storage_size_in_tbs!: number
		db_version!:               string
		db_workload!:              string
		long_term_backup_schedule?: matchN(1, [#long_term_backup_schedule, list.MaxItems(1) & [...#long_term_backup_schedule]])
		display_name!:             string
		id?:                       string
		license_model!:            string
		location!:                 string
		mtls_connection_required!: bool
		timeouts?:                 #timeouts
		name!:                     string
		national_character_set!:   string
		resource_group_name!:      string
		subnet_id?:                string
		tags?: [string]: string
		virtual_network_id?: string
	})

	#long_term_backup_schedule: close({
		enabled!:                  bool
		repeat_cadence!:           string
		retention_period_in_days!: number
		time_of_backup!:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
