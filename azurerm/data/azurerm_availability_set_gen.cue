package data

#azurerm_availability_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_availability_set")
	close({
		timeouts?:                     #timeouts
		id?:                           string
		location?:                     string
		managed?:                      bool
		name!:                         string
		platform_fault_domain_count?:  number
		platform_update_domain_count?: number
		resource_group_name!:          string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
