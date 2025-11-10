package res

#azurerm_data_factory_trigger_blob_event: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_trigger_blob_event")
	close({
		activated?: bool
		additional_properties?: [string]: string
		annotations?: [...string]
		blob_path_begins_with?: string
		blob_path_ends_with?:   string
		data_factory_id!:       string
		pipeline!: matchN(1, [#pipeline, [_, ...] & [...#pipeline]])
		description?: string
		timeouts?:    #timeouts
		events!: [...string]
		id?:                 string
		ignore_empty_blobs?: bool
		name!:               string
		storage_account_id!: string
	})

	#pipeline: close({
		name!: string
		parameters?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
