package res

import "list"

#azurerm_cognitive_account_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cognitive_account_project")
	close({
		identity!: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		timeouts?:             #timeouts
		cognitive_account_id!: string
		default?:              bool
		description?:          string
		display_name?:         string
		endpoints?: [string]: string
		id?:       string
		location!: string
		name!:     string
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
