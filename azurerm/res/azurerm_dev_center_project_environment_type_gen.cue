package res

import "list"

#azurerm_dev_center_project_environment_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_center_project_environment_type")
	close({
		creator_role_assignment_roles?: [...string]
		identity?: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		deployment_target_id!:  string
		dev_center_project_id!: string
		id?:                    string
		location!:              string
		name!:                  string
		tags?: [string]: string
		timeouts?: #timeouts
		user_role_assignment?: matchN(1, [#user_role_assignment, [...#user_role_assignment]])
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#user_role_assignment: close({
		roles!: [...string]
		user_id!: string
	})
}
