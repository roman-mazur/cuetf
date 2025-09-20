package res

import "list"

#azurerm_extended_custom_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_extended_custom_location")
	close({
		cluster_extension_ids!: [...string]
		display_name?:     string
		host_resource_id!: string
		host_type?:        string
		authentication?: matchN(1, [#authentication, list.MaxItems(1) & [...#authentication]])
		id?:                  string
		location!:            string
		name!:                string
		namespace!:           string
		resource_group_name!: string
		timeouts?:            #timeouts
	})

	#authentication: close({
		type?:  string
		value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
