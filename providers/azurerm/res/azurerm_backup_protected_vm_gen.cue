package res

#azurerm_backup_protected_vm: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_backup_protected_vm")
	close({
		timeouts?:         #timeouts
		backup_policy_id?: string
		exclude_disk_luns?: [...number]
		id?: string
		include_disk_luns?: [...number]
		protection_state?:    string
		recovery_vault_name!: string
		resource_group_name!: string
		source_vm_id?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
