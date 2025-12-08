package data

#azurerm_extended_location_custom_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_extended_location_custom_location")
	close({
		authentication?: [...close({
			type?:  string
			value?: string
		})]
		cluster_extension_ids?: [...string]
		display_name?:        string
		host_resource_id?:    string
		host_type?:           string
		id?:                  string
		location?:            string
		timeouts?:            #timeouts
		name!:                string
		namespace?:           string
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
