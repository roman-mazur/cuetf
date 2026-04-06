package res

#azurerm_private_dns_zone_virtual_network_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_private_dns_zone_virtual_network_link")
	close({
		timeouts?:              #timeouts
		id?:                    string
		name!:                  string
		private_dns_zone_name!: string
		registration_enabled?:  bool
		resolution_policy?:     string
		resource_group_name!:   string
		tags?: [string]: string
		virtual_network_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
