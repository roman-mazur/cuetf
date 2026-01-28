package res

#azurerm_network_security_perimeter_access_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_security_perimeter_access_rule")
	close({
		timeouts?: #timeouts
		address_prefixes?: [...string]
		direction!: string
		fqdns?: [...string]
		id?:                                    string
		name!:                                  string
		network_security_perimeter_profile_id!: string
		service_tags?: [...string]
		subscription_ids?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
