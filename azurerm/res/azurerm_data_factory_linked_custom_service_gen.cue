package res

import "list"

#azurerm_data_factory_linked_custom_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_linked_custom_service")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!: string
		description?:     string
		integration_runtime?: matchN(1, [#integration_runtime, list.MaxItems(1) & [...#integration_runtime]])
		id?:   string
		name!: string
		parameters?: [string]: string
		type!:                 string
		type_properties_json!: string
		timeouts?:             #timeouts
	})

	#integration_runtime: close({
		name!: string
		parameters?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
