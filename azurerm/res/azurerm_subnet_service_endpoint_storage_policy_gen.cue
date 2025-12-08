package res

import "list"

#azurerm_subnet_service_endpoint_storage_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_subnet_service_endpoint_storage_policy")
	close({
		definition?: matchN(1, [#definition, list.MaxItems(2) & [...#definition]])
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#definition: close({
		description?: string
		name!:        string
		service?:     string
		service_resources!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
