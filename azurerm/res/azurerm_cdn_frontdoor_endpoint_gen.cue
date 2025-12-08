package res

#azurerm_cdn_frontdoor_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cdn_frontdoor_endpoint")
	close({
		timeouts?:                 #timeouts
		cdn_frontdoor_profile_id!: string
		enabled?:                  bool
		host_name?:                string
		id?:                       string
		name!:                     string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
