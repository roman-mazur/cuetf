package data

#azurerm_backup_policy_file_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_backup_policy_file_share")
	close({
		timeouts?:            #timeouts
		id?:                  string
		name!:                string
		recovery_vault_name!: string
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
