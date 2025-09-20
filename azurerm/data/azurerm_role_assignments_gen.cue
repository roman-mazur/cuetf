package data

#azurerm_role_assignments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_role_assignments")
	close({
		timeouts?:       #timeouts
		id?:             string
		limit_at_scope?: bool
		principal_id?:   string
		role_assignments?: [...close({
			condition?:                              string
			condition_version?:                      string
			delegated_managed_identity_resource_id?: string
			description?:                            string
			principal_id?:                           string
			principal_type?:                         string
			role_assignment_id?:                     string
			role_assignment_name?:                   string
			role_assignment_scope?:                  string
			role_definition_id?:                     string
		})]
		scope!:     string
		tenant_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
