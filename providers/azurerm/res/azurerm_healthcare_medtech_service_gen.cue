package res

import "list"

#azurerm_healthcare_medtech_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_healthcare_medtech_service")
	close({
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		timeouts?:                     #timeouts
		device_mapping_json!:          string
		eventhub_consumer_group_name!: string
		eventhub_name!:                string
		eventhub_namespace_name!:      string
		id?:                           string
		location!:                     string
		name!:                         string
		tags?: [string]: string
		workspace_id!: string
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
