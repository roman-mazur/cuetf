package res

#azurerm_storage_mover_source_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_mover_source_endpoint")
	close({
		timeouts?:         #timeouts
		description?:      string
		export?:           string
		host!:             string
		id?:               string
		name!:             string
		nfs_version?:      string
		storage_mover_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
