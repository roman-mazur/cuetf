package res

#azurerm_virtual_hub_security_partner_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_hub_security_partner_provider")
	close({
		timeouts?:               #timeouts
		id?:                     string
		location!:               string
		name!:                   string
		resource_group_name!:    string
		security_provider_name!: string
		tags?: [string]: string
		virtual_hub_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
