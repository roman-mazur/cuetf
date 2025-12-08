package data

#azurerm_dedicated_host_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_dedicated_host_group")
	close({
		timeouts?:                    #timeouts
		automatic_placement_enabled?: bool
		id?:                          string
		location?:                    string
		name!:                        string
		platform_fault_domain_count?: number
		resource_group_name!:         string
		tags?: [string]: string
		zones?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
