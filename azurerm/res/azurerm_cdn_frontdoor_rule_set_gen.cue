package res

#azurerm_cdn_frontdoor_rule_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cdn_frontdoor_rule_set")
	close({
		timeouts?:                 #timeouts
		cdn_frontdoor_profile_id!: string
		id?:                       string
		name!:                     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
