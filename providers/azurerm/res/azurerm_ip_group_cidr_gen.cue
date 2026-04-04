package res

#azurerm_ip_group_cidr: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_ip_group_cidr")
	close({
		timeouts?:    #timeouts
		cidr!:        string
		id?:          string
		ip_group_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
