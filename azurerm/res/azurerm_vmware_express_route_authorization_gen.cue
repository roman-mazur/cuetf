package res

#azurerm_vmware_express_route_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_vmware_express_route_authorization")
	close({
		timeouts?:                        #timeouts
		express_route_authorization_id?:  string
		express_route_authorization_key?: string
		id?:                              string
		name!:                            string
		private_cloud_id!:                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
