package res

import "list"

#azurerm_managed_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_managed_application")
	close({
		application_definition_id?:   string
		id?:                          string
		kind!:                        string
		location!:                    string
		managed_resource_group_name!: string
		name!:                        string
		outputs?: [string]: string
		plan?: matchN(1, [#plan, list.MaxItems(1) & [...#plan]])
		parameter_values?:    string
		timeouts?:            #timeouts
		resource_group_name!: string
		tags?: [string]: string
	})

	#plan: close({
		name!:           string
		product!:        string
		promotion_code?: string
		publisher!:      string
		version!:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
