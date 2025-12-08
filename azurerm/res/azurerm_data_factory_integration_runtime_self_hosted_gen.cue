package res

#azurerm_data_factory_integration_runtime_self_hosted: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_integration_runtime_self_hosted")
	close({
		rbac_authorization?: matchN(1, [#rbac_authorization, [...#rbac_authorization]])
		data_factory_id!:                              string
		description?:                                  string
		id?:                                           string
		name!:                                         string
		primary_authorization_key?:                    string
		secondary_authorization_key?:                  string
		self_contained_interactive_authoring_enabled?: bool
		timeouts?:                                     #timeouts
	})

	#rbac_authorization: close({
		resource_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
