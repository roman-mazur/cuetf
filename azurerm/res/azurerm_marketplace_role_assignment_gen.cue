package res

#azurerm_marketplace_role_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_marketplace_role_assignment")
	close({
		condition?:                              string
		condition_version?:                      string
		delegated_managed_identity_resource_id?: string
		description?:                            string
		id?:                                     string
		name?:                                   string
		principal_id!:                           string
		principal_type?:                         string
		role_definition_id?:                     string
		timeouts?:                               #timeouts
		role_definition_name?:                   string
		skip_service_principal_aad_check?:       bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
