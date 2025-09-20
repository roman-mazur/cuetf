package res

import "list"

#azurerm_ai_foundry_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_ai_foundry_project")
	close({
		ai_services_hub_id!:           string
		description?:                  string
		friendly_name?:                string
		high_business_impact_enabled?: bool
		id?:                           string
		location!:                     string
		name!:                         string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		primary_user_assigned_identity?: string
		timeouts?:                       #timeouts
		project_id?:                     string
		tags?: [string]: string
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
}
