package res

import "list"

#azurerm_synapse_linked_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_synapse_linked_service")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		description?: string
		id?:          string
		integration_runtime?: matchN(1, [#integration_runtime, list.MaxItems(1) & [...#integration_runtime]])
		name!: string
		parameters?: [string]: string
		synapse_workspace_id!: string
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
