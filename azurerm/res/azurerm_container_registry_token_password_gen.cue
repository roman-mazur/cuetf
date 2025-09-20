package res

import "list"

#azurerm_container_registry_token_password: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_registry_token_password")
	close({
		password1?: matchN(1, [#password1, list.MaxItems(1) & [_, ...] & [...#password1]])
		password2?: matchN(1, [#password2, list.MaxItems(1) & [...#password2]])
		timeouts?:                    #timeouts
		container_registry_token_id!: string
		id?:                          string
	})

	#password1: close({
		expiry?: string
		value?:  string
	})

	#password2: close({
		expiry?: string
		value?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
