package res

#azurerm_subnet_nat_gateway_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_subnet_nat_gateway_association")
	close({
		timeouts?:       #timeouts
		id?:             string
		nat_gateway_id!: string
		subnet_id!:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
