package res

import "list"

#azurerm_logic_app_integration_account_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_logic_app_integration_account_certificate")
	close({
		key_vault_key?: matchN(1, [#key_vault_key, list.MaxItems(1) & [...#key_vault_key]])
		id?:                       string
		integration_account_name!: string
		metadata?:                 string
		name!:                     string
		public_certificate?:       string
		resource_group_name!:      string
		timeouts?:                 #timeouts
	})

	#key_vault_key: close({
		key_name!:     string
		key_vault_id!: string
		key_version?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
