package res

#azurerm_storage_object_replication: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_object_replication")
	close({
		rules!: matchN(1, [#rules, [_, ...] & [...#rules]])
		destination_object_replication_id?: string
		destination_storage_account_id!:    string
		id?:                                string
		source_object_replication_id?:      string
		source_storage_account_id!:         string
		timeouts?:                          #timeouts
	})

	#rules: close({
		copy_blobs_created_after?:   string
		destination_container_name!: string
		filter_out_blobs_with_prefix?: [...string]
		name?:                  string
		source_container_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
