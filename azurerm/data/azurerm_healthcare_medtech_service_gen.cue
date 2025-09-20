package data

#azurerm_healthcare_medtech_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_healthcare_medtech_service")
	close({
		timeouts?:                     #timeouts
		device_mapping_json?:          string
		eventhub_consumer_group_name?: string
		eventhub_name?:                string
		eventhub_namespace_name?:      string
		id?:                           string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		name!:         string
		workspace_id!: string
	})

	#timeouts: close({
		read?: string
	})
}
