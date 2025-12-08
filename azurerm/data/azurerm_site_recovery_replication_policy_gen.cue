package data

#azurerm_site_recovery_replication_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_site_recovery_replication_policy")
	close({
		timeouts?:                                             #timeouts
		application_consistent_snapshot_frequency_in_minutes?: number
		id?:                                                   string
		name!:                                                 string
		recovery_point_retention_in_minutes?:                  number
		recovery_vault_name!:                                  string
		resource_group_name!:                                  string
	})

	#timeouts: close({
		read?: string
	})
}
