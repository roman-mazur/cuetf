package data

#azurerm_cdn_frontdoor_rule_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_cdn_frontdoor_rule_set")
	close({
		timeouts?:                 #timeouts
		cdn_frontdoor_profile_id?: string
		id?:                       string
		name!:                     string
		profile_name!:             string
		resource_group_name!:      string
	})

	#timeouts: close({
		read?: string
	})
}
