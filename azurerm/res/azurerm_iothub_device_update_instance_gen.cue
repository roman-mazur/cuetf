package res

import "list"

#azurerm_iothub_device_update_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iothub_device_update_instance")
	close({
		diagnostic_storage_account?: matchN(1, [#diagnostic_storage_account, list.MaxItems(1) & [...#diagnostic_storage_account]])
		device_update_account_id!: string
		diagnostic_enabled?:       bool
		id?:                       string
		iothub_id!:                string
		name!:                     string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#diagnostic_storage_account: close({
		connection_string!: string
		id!:                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
