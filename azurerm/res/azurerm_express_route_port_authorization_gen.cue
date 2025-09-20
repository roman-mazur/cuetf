package res

#azurerm_express_route_port_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_express_route_port_authorization")
	close({
		timeouts?:                 #timeouts
		authorization_key?:        string
		authorization_use_status?: string
		express_route_port_name!:  string
		id?:                       string
		name!:                     string
		resource_group_name!:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
