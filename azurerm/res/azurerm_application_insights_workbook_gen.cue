package res

import "list"

#azurerm_application_insights_workbook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_application_insights_workbook")
	close({
		category?:     string
		data_json!:    string
		description?:  string
		display_name!: string
		id?:           string
		location!:     string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		name!:                 string
		resource_group_name!:  string
		timeouts?:             #timeouts
		source_id?:            string
		storage_container_id?: string
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
