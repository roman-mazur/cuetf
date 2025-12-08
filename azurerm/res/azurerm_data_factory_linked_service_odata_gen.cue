package res

import "list"

#azurerm_data_factory_linked_service_odata: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_linked_service_odata")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!: string
		description?:     string
		basic_authentication?: matchN(1, [#basic_authentication, list.MaxItems(1) & [...#basic_authentication]])
		id?:                       string
		integration_runtime_name?: string
		name!:                     string
		parameters?: [string]: string
		url!:      string
		timeouts?: #timeouts
	})

	#basic_authentication: close({
		password!: string
		username!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
