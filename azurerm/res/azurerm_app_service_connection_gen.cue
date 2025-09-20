package res

import "list"

#azurerm_app_service_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_app_service_connection")
	close({
		authentication?: matchN(1, [#authentication, list.MaxItems(1) & [_, ...] & [...#authentication]])
		app_service_id!:     string
		client_type?:        string
		id?:                 string
		name!:               string
		target_resource_id!: string
		vnet_solution?:      string
		secret_store?: matchN(1, [#secret_store, list.MaxItems(1) & [...#secret_store]])
		timeouts?: #timeouts
	})

	#authentication: close({
		certificate?:     string
		client_id?:       string
		name?:            string
		principal_id?:    string
		secret?:          string
		subscription_id?: string
		type!:            string
	})

	#secret_store: close({
		key_vault_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
