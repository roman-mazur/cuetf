package data

#azurerm_cdn_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_cdn_profile")
	close({
		timeouts?:            #timeouts
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		sku?:                 string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
