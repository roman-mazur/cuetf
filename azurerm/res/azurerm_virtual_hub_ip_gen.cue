package res

#azurerm_virtual_hub_ip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_hub_ip")
	close({
		timeouts?:                     #timeouts
		id?:                           string
		name!:                         string
		private_ip_address?:           string
		private_ip_allocation_method?: string
		public_ip_address_id!:         string
		subnet_id!:                    string
		virtual_hub_id!:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
