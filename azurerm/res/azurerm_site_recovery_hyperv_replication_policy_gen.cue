package res

#azurerm_site_recovery_hyperv_replication_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_site_recovery_hyperv_replication_policy")
	close({
		timeouts?:                                           #timeouts
		application_consistent_snapshot_frequency_in_hours!: number
		id?:                                                 string
		name!:                                               string
		recovery_point_retention_in_hours!:                  number
		recovery_vault_id!:                                  string
		replication_interval_in_seconds!:                    number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
