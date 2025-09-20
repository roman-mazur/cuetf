package res

#azurerm_data_protection_backup_instance_disk: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_protection_backup_instance_disk")
	close({
		timeouts?:                     #timeouts
		backup_policy_id!:             string
		disk_id!:                      string
		id?:                           string
		location!:                     string
		name!:                         string
		snapshot_resource_group_name!: string
		snapshot_subscription_id?:     string
		vault_id!:                     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
