package res

#azurerm_site_recovery_vmware_replication_policy_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_site_recovery_vmware_replication_policy_association")
	close({
		timeouts?:          #timeouts
		id?:                string
		name!:              string
		policy_id!:         string
		recovery_vault_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
