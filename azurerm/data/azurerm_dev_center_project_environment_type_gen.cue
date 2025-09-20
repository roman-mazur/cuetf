package data

#azurerm_dev_center_project_environment_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_center_project_environment_type")
	close({
		timeouts?: #timeouts
		creator_role_assignment_roles?: [...string]
		deployment_target_id?:  string
		dev_center_project_id!: string
		id?:                    string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?: string
		name!:     string
		tags?: [string]: string
		user_role_assignment?: [...close({
			roles?: [...string]
			user_id?: string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
