package res

#azurerm_oracle_autonomous_database_clone_from_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_oracle_autonomous_database_clone_from_database")
	close({
		admin_password!: string
		allowed_ip_addresses?: [...string]
		auto_scaling_enabled!:             bool
		auto_scaling_for_storage_enabled!: bool
		backup_retention_period_in_days!:  number
		character_set!:                    string
		clone_type!:                       string
		compute_count!:                    number
		compute_model!:                    string
		customer_contacts?: [...string]
		data_storage_size_in_tb!:       number
		database_version!:              string
		database_workload!:             string
		display_name!:                  string
		id?:                            string
		license_model!:                 string
		location!:                      string
		mtls_connection_required!:      bool
		name!:                          string
		national_character_set!:        string
		refreshable_model?:             string
		timeouts?:                      #timeouts
		resource_group_name!:           string
		source_autonomous_database_id!: string
		subnet_id?:                     string
		tags?: [string]: string
		virtual_network_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
