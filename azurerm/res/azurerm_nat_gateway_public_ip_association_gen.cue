package res

#azurerm_nat_gateway_public_ip_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_nat_gateway_public_ip_association")
	close({
		timeouts?:             #timeouts
		id?:                   string
		nat_gateway_id!:       string
		public_ip_address_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
