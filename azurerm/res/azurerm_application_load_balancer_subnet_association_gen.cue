package res

#azurerm_application_load_balancer_subnet_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_application_load_balancer_subnet_association")
	close({
		timeouts?:                     #timeouts
		application_load_balancer_id!: string
		id?:                           string
		name!:                         string
		subnet_id!:                    string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
