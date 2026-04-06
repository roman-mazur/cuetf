package res

#azurerm_application_load_balancer_frontend: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_application_load_balancer_frontend")
	close({
		timeouts?:                     #timeouts
		application_load_balancer_id!: string
		fully_qualified_domain_name?:  string
		id?:                           string
		name!:                         string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
