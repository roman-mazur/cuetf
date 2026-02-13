package res

import "list"

#azurerm_api_management_workspace_named_value: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_workspace_named_value")
	close({
		timeouts?:                    #timeouts
		api_management_workspace_id!: string
		display_name!:                string
		id?:                          string
		name!:                        string
		secret?:                      bool
		tags?: [...string]
		value?: string
		value_from_key_vault?: matchN(1, [#value_from_key_vault, list.MaxItems(1) & [...#value_from_key_vault]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#value_from_key_vault: close({
		identity_client_id?: string
		secret_id!:          string
	})
}
