package data

#azurerm_cdn_frontdoor_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cdn_frontdoor_endpoint")
	close({
		timeouts?:            #timeouts
		enabled?:             bool
		host_name?:           string
		id?:                  string
		name!:                string
		profile_name!:        string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
