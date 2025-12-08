package res

import "list"

#azurerm_container_registry_credential_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_container_registry_credential_set")
	close({
		container_registry_id!: string

		// The name of the credential set.
		name!:         string
		id?:           string
		login_server!: string
		authentication_credentials!: matchN(1, [#authentication_credentials, list.MaxItems(1) & [_, ...] & [...#authentication_credentials]])
		identity!: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		timeouts?: #timeouts
	})

	#authentication_credentials: close({
		password_secret_id!: string
		username_secret_id!: string
	})

	#identity: close({
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
