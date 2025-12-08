package res

#azurerm_cdn_frontdoor_custom_domain_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cdn_frontdoor_custom_domain_association")
	close({
		timeouts?:                       #timeouts
		cdn_frontdoor_custom_domain_id!: string
		cdn_frontdoor_route_ids!: [...string]
		id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
