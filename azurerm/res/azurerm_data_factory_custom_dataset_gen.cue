package res

import "list"

#azurerm_data_factory_custom_dataset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_custom_dataset")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!: string
		description?:     string
		folder?:          string
		id?:              string
		linked_service!: matchN(1, [#linked_service, list.MaxItems(1) & [_, ...] & [...#linked_service]])
		name!: string
		parameters?: [string]: string
		timeouts?:             #timeouts
		schema_json?:          string
		type!:                 string
		type_properties_json!: string
	})

	#linked_service: close({
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
