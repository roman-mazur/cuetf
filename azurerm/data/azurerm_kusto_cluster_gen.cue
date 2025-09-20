package data

#azurerm_kusto_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kusto_cluster")
	close({
		timeouts?:           #timeouts
		data_ingestion_uri?: string
		id?:                 string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		uri?: string
	})

	#timeouts: close({
		read?: string
	})
}
