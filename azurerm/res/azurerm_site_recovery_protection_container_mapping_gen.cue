package res

import "list"

#azurerm_site_recovery_protection_container_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_site_recovery_protection_container_mapping")
	close({
		automatic_update?: matchN(1, [#automatic_update, list.MaxItems(1) & [...#automatic_update]])
		id?:                                        string
		name!:                                      string
		recovery_fabric_name!:                      string
		recovery_replication_policy_id!:            string
		recovery_source_protection_container_name!: string
		recovery_target_protection_container_id!:   string
		recovery_vault_name!:                       string
		resource_group_name!:                       string
		timeouts?:                                  #timeouts
	})

	#automatic_update: close({
		authentication_type?:   string
		automation_account_id?: string
		enabled?:               bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
